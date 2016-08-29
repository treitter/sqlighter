//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/sqlighter/intf/SQLighterDb.java
//

#ifndef _ComValsA2iosSqlighterIntfSQLighterDb_H_
#define _ComValsA2iosSqlighterIntfSQLighterDb_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaLangLong;
@class JavaUtilDate;
@protocol SQLighterRs;

@protocol SQLighterDb < NSObject, JavaObject >

- (jboolean)isDbFileDeployed;

- (void)setDbNameWithNSString:(NSString *)name;

- (void)setDbPathWithNSString:(NSString *)path;

- (void)setContextWithId:(id)context;

- (void)setOverwriteDbWithBoolean:(jboolean)isOverwrite;

- (void)openIfClosed;

- (void)copyDbOnce OBJC_METHOD_FAMILY_NONE;

- (void)deployDbOnce;

- (void)addParamWithNSString:(NSString *)s;

- (void)addParamWithDouble:(jdouble)d;

- (void)addParamWithLong:(jlong)l;

- (void)addParamNull;

- (void)addParamWithByteArray:(IOSByteArray *)blob;

- (void)addParamWithJavaUtilDate:(JavaUtilDate *)date;

- (void)addParamObjWithId:(id)o;

- (id<SQLighterRs>)executeSelectWithNSString:(NSString *)selectQuery;

- (JavaLangLong *)executeChangeWithNSString:(NSString *)statementString;

- (void)beginTransaction;

- (void)commitTransaction;

- (void)rollbackTransaction;

- (void)close;

- (jboolean)deleteDBFile;

- (void)setIsDateNamedColumnWithBoolean:(jboolean)isDateNamedColumn;

- (JavaUtilDate *)getDateWithoutMillisWithJavaUtilDate:(JavaUtilDate *)date;

- (jlong)getStatementBalance;

- (void)setDateColumnNameHintWithNSString:(NSString *)hint;

- (void)setTimeZoneWithNSString:(NSString *)timeZone;

- (void)setDateFormatStringWithNSString:(NSString *)dateFormatString;

@end

J2OBJC_EMPTY_STATIC_INIT(SQLighterDb)

FOUNDATION_EXPORT NSString *SQLighterDb_DATE_HINT_;
J2OBJC_STATIC_FIELD_GETTER(SQLighterDb, DATE_HINT_, NSString *)

FOUNDATION_EXPORT NSString *SQLighterDb_DATE_FORMAT_;
J2OBJC_STATIC_FIELD_GETTER(SQLighterDb, DATE_FORMAT_, NSString *)

J2OBJC_TYPE_LITERAL_HEADER(SQLighterDb)

#define ComValsA2iosSqlighterIntfSQLighterDb SQLighterDb

#endif // _ComValsA2iosSqlighterIntfSQLighterDb_H_
