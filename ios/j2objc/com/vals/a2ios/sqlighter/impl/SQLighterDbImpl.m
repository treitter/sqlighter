//
//  SQLighterDb.m
//
//  Created by Vlad Sayenko on 8/21/15.
//  Copyright (c) 2015 Vlad Sayenko. All rights reserved.
//

#import "SQLighterDbImpl.h"
#import "SQLighterRsImpl.h"
#import "IOSPrimitiveArray.h"
#import "java/lang/Exception.h"
#import "java/util/Date.h"
#import "java/lang/Long.h"

@implementation SQLighterDbImpl

@synthesize dbName, replaceDatabase, database, parameterArray, isDateNamedColumn;

-(id) init {
    if( self = [super init]) {
        parameterArray = [NSMutableArray arrayWithCapacity:0];
        isOpen = NO;
        isCopied = NO;
        self.isDateNamedColumn = YES;
        self.dateFormatter = [[NSDateFormatter alloc] init];
        [self.dateFormatter setDateFormat:SQLighterDb_DATE_FORMAT_];
    }
    return self;
}

-(void) analyzeReturnCodeForErrors: (int) returnCode {
    if (returnCode == SQLITE_OK ||
        returnCode == SQLITE_DONE ||
        returnCode == SQLITE_ROW ||
        returnCode == SQLITE_WARNING) {
        /**
         * These codes are, basically, positive execution diagnistics
         * SQLITE_WARNING - tbd...
         */
        return;
    }
    @throw [[JavaLangException alloc]
            initWithNSString:[NSString
            stringWithFormat: @"Database returned Error code: '%d'.", returnCode]];
}

- (jboolean)isDbFileDeployed {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *writableDbPath = [documentDirectory stringByAppendingPathComponent: dbName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    return [fileManager fileExistsAtPath:writableDbPath];
}

- (void)setDbNameWithNSString:(NSString *)name {
    self.dbName = name;
}

- (void)setOverwriteDbWithBoolean:(jboolean)isOverwrite {
    self.replaceDatabase = isOverwrite;
}

-(sqlite3_stmt *) prepareStatementWithSql: (NSString *) sqlString  {
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(database, [sqlString  UTF8String], -1, &statement, NULL) != SQLITE_OK) {
        [parameterArray removeAllObjects];
        @throw [[JavaLangException alloc]
                initWithNSString:[NSString stringWithFormat:
                   @"Database SQL Error: '%s'.", sqlite3_errmsg(database)]];
    }
    self.lastPreparedStmt = statement;
    return statement;
}

- (id<SQLighterRs>)executeSelectWithNSString:(NSString *)selectQuery {
    sqlite3_stmt *statement = [self prepareStatementWithSql: selectQuery];
    [self bindParameters: parameterArray];
    SQLighterRsImpl *rs = [[SQLighterRsImpl alloc] init];
    rs.stmt = statement;
    rs.db = self;
    [parameterArray removeAllObjects];
    return rs;
}

- (JavaLangLong *)executeChangeWithNSString:(NSString *) makeChangeQuery {
    JavaLangLong *rowId = nil;
    sqlite3_stmt *statement = [self prepareStatementWithSql: makeChangeQuery];
    [self bindParameters: parameterArray];
    code = sqlite3_step(statement);
    if ([[makeChangeQuery lowercaseString] hasPrefix:@"insert"]) {
        sqlite_int64 rowid = sqlite3_last_insert_rowid(database);
        rowId = [[JavaLangLong alloc]initWithLong: rowid];
    }
    [self closeStmt: statement];
    return rowId;
}

-(void) closeStmt: (sqlite3_stmt *) statement {
    if (sqlite3_finalize(statement) == SQLITE_ERROR) {
        @throw [[JavaLangException alloc] initWithNSString:
                [NSString stringWithFormat: @"Database SQL Error: '%s'.", sqlite3_errmsg(database)]];
    }
}

-(void) bindParameters: (NSMutableArray*) parameters {
    if (parameters == nil) {
        return;
    }
    for (int par = 1; par <= [parameters count]; par++) {
        id o = [parameters objectAtIndex: par - 1];
        if (o == nil || [o isKindOfClass: [NSNull class]]) {
            [self bindNullAtIndex: par];
        } else if([o isKindOfClass: [NSString class]]) {
            [self bindString: o atIndex: par];
        } else if ([o isKindOfClass: [NSNumber class]]) {
            NSNumber *num = [parameters objectAtIndex: par - 1];
            if (strcmp([num objCType], @encode(int)) == 0 ||
                strcmp([num objCType], @encode(long)) == 0 ||
                strcmp([num objCType], @encode(unsigned int)) == 0 ||
                strcmp([num objCType], @encode(unsigned long)) == 0 ||
                strcmp([num objCType], @encode(unsigned long long)) == 0 ||
                strcmp([num objCType], @encode(unsigned short)) == 0 ||
                strcmp([num objCType], @encode(short)) == 0 ||
                strcmp([num objCType], @encode(long long)) == 0
                ) {
                [self bindInt:[num intValue] atIndex: par];
            } else if (strcmp([num objCType], @encode(float)) == 0 ||
                       strcmp([num objCType], @encode(double)) == 0) {
                [self bindDouble: [num doubleValue] atIndex: par];
            }
        } else if ([o isKindOfClass: [JavaUtilDate class]]) {
            [self bindJavaUtilDate:o atIndex: par];
//        } else if ([o isKindOfClass: [NSDate class]]) {
//            [self bindDate:o atIndex: par];
        } else if ([o isKindOfClass: [NSData class]]) {
            [self bindBlob: o atIndex: par];
        } else {
            [self bindNullAtIndex: par];
        }
    }
    [parameters removeAllObjects];
}

- (void)setIsDateNamedColumnWithBoolean:(jboolean)isDateNamedColumn {
    
}

- (void)setContextWithId:(id)context {
    // not used in iOS.
}

-(void) copyDbOnce {
    if (!isCopied) {
        isCopied = YES;
    } else {
        return;
    }
    BOOL success;
    NSError *error;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    /**
     * Documents directory under application's directory
     */
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    /**
     * Full path\file to DB file
     */
    NSString *writableDbPath = [documentDirectory stringByAppendingPathComponent: dbName];
    if (replaceDatabase == YES) {
        NSLog(@"Service: Attempt to replace existing DB.");
        if (![fileManager removeItemAtPath:writableDbPath error:&error]) {
            NSLog(@"Service: Error deleting file: %@", [error localizedDescription]);
        }
    }
    success = [fileManager fileExistsAtPath:writableDbPath];
    if (!success) {
        /**
         * file not found - was deleted, or didn't exist before.
         */
        /**
         * Path to project's resources
         */
        NSString *defaultDbPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent: dbName];
        NSLog(@"\nSource db path: \n%@\nDest db path: \n%@", defaultDbPath, writableDbPath);
        /**
         * Copy DB file from project's resource path to application document's directory.
         */
        success = [fileManager copyItemAtPath:defaultDbPath toPath:writableDbPath error:&error];
        if (!success) {
            NSLog(@"Could not copy database");
            @throw [[JavaLangException alloc] initWithNSString:
                    [NSString stringWithFormat: @"Failed to create database with message: '%@'", [error localizedDescription]]];
        }
    }
}

- (void)openIfClosed {
    if(!isOpen) {
        isOpen = YES;
    } else {
        return;
    }
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent: dbName];
    // Open the database. The database was prepared outside the application.
    if (sqlite3_open([path UTF8String], &database) != SQLITE_OK) {
        // Even though the open failed, call close to properly clean up resources.
        //[paths release];
        sqlite3_close(database);
        @throw [[JavaLangException alloc] initWithNSString:
                [NSString stringWithFormat: @"Database Error: '%s'.", sqlite3_errmsg(database)]];
    }
}

- (void)addParamWithJavaUtilDate:(JavaUtilDate *)date {
    [parameterArray addObject: date];
}

-(void) bindJavaUtilDate: (JavaUtilDate *) date atIndex: (int) paramIdx {
    long t = [date getTime];
    NSDate *dt = [NSDate dateWithTimeIntervalSince1970:t/1000];
    NSString *dateStr = [self.dateFormatter stringFromDate:dt];
    [self bindString:dateStr atIndex: paramIdx];
}

- (void)addParamObjWithId:(id)o {
    [parameterArray addObject: o];
}

-(void) addParamWithNSString: (NSString*) str {
    [parameterArray addObject: str];
}

-(void) addParamWithDouble: (double) par {
    [parameterArray addObject: [NSNumber numberWithDouble: par]];
}

-(void) addParamWithNull {
    [parameterArray addObject: [NSNull null]];
}

-(void) addParamWithInt: (int) par {
    [parameterArray addObject: [NSNumber numberWithInt:par]];
}

-(void) addParamWithLong: (long) par {
    [parameterArray addObject: [NSNumber numberWithLong: par ]];
}

//-(void) addParamWithDate: (NSDate*) date atIndex: (int) idx {
//    [self addParamWithDouble: [date timeIntervalSince1970]];
//}

//-(void) bindDate: (NSDate*) date atIndex: (int) idx {
//        [self bindDouble: [date timeIntervalSince1970] atIndex: idx];
//}

-(void) addParamWithBlob: (NSData*) data {
    [parameterArray addObject: data];
}

- (void)addParamWithByteArray:(IOSByteArray *)blob {
    NSData *d = [NSData dataWithBytes:[blob buffer] length:[blob length]];
    [self addParamWithBlob: d];
}

- (void)addParamNull {
    [self addParamWithNull];
}

-(void) bindString: (NSString*) str  atIndex: (int) paramIdx {
        sqlite3_bind_text(self.lastPreparedStmt, paramIdx, [str UTF8String], -1, SQLITE_TRANSIENT);
}

-(void) bindDouble: (double) d atIndex: (int) paramIdx{
        sqlite3_bind_double(self.lastPreparedStmt, paramIdx, d );
}
-(void) bindNullAtIndex: (int) paramIdx {
        sqlite3_bind_null(self.lastPreparedStmt, paramIdx);
}

-(void) bindInt: (int) par atIndex: (int) paramIdx  {
        sqlite3_bind_int(self.lastPreparedStmt, paramIdx, par);
}

-(void) bindLong: (long) par  atIndex: (int) paramIdx{
        sqlite3_bind_int(self.lastPreparedStmt, paramIdx, (int)par);
}

-(void) bindBlob: (NSData*) data  atIndex: (int) paramIdx {
        sqlite3_bind_blob(self.lastPreparedStmt, paramIdx, [data bytes], (int)[data length], SQLITE_TRANSIENT);
}

-(jboolean) isNullAtIndex: (int) idx {
    const char *buffer = (char*)sqlite3_column_text(self.lastPreparedStmt, idx);
    int retVal = buffer == nil;
    return retVal;
}

- (void)beginTransaction {
    [self executeChangeWithNSString:@"begin transaction"];
}

- (void)commitTransaction {
    [self executeChangeWithNSString:@"commit"];
}

- (void)rollbackTransaction {
    [self executeChangeWithNSString:@"rollback"];
}

- (void)close {
    int rc = sqlite3_close(database);
    [self analyzeReturnCodeForErrors:rc];
}

@end
