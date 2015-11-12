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

- (void)setContextWithId:(id)context;

- (void)setOverwriteDbWithBoolean:(jboolean)isOverwrite;

- (void)openIfClosed;

- (void)copyDbOnce OBJC_METHOD_FAMILY_NONE;

- (void)addParamWithNSString:(NSString *)s;

- (void)addParamWithDouble:(jdouble)d;

- (void)addParamWithLong:(jlong)l;

- (void)addParamNull;

- (void)addParamWithByteArray:(IOSByteArray *)blob;

- (void)addParamWithJavaUtilDate:(JavaUtilDate *)date;

- (void)addParamObjWithId:(id)o;

- (id<SQLighterRs>)executeSelectWithNSString:(NSString *)selectQuery;

- (JavaLangLong *)executeChangeWithNSString:(NSString *)insert;

- (void)beginTransaction;

- (void)commitTransaction;

- (void)rollbackTransaction;

- (void)close;

- (void)setIsDateNamedColumnWithBoolean:(jboolean)isDateNamedColumn;

@end

J2OBJC_EMPTY_STATIC_INIT(SQLighterDb)

J2OBJC_TYPE_LITERAL_HEADER(SQLighterDb)

#define ComValsA2iosSqlighterIntfSQLighterDb SQLighterDb

#endif // _ComValsA2iosSqlighterIntfSQLighterDb_H_
