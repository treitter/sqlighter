//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/intf/AnAttrib.java
//

#ifndef _ComValsA2iosAmfibianIntfAnAttrib_H_
#define _ComValsA2iosAmfibianIntfAnAttrib_H_

#include "J2ObjC_header.h"

@class IOSClass;
@class JavaLangReflectMethod;
@protocol AnAdapter;
@protocol AnObject;

@protocol AnAttrib < NSObject, JavaObject >

- (void)setAnObjectWithAnObject:(id<AnObject>)anObject;

- (NSString *)getAttribName;

- (void)setAttribNameWithNSString:(NSString *)attribName;

- (NSString *)getJsonName;

- (void)setJsonNameWithNSString:(NSString *)jsonName;

- (NSString *)getColumnName;

- (void)setColumnNameWithNSString:(NSString *)columnName;

- (void)setValueWithId:(id)value;

- (id)getValueWithAnAdapter:(id<AnAdapter>)converter;

- (id)getValue;

- (JavaLangReflectMethod *)getGetter;

- (JavaLangReflectMethod *)getSetter;

- (IOSClass *)getAttribClass;

- (void)setDbColumnDefinitionWithNSString:(NSString *)dbColumnDefinition;

- (NSString *)getDbColumnDefinition;

- (void)setJsonSetAdapterWithAnAdapter:(id<AnAdapter>)converter;

- (id<AnAdapter>)getJsonSetAdapter;

- (void)setJsonGetAdapterWithAnAdapter:(id<AnAdapter>)converter;

- (id<AnAdapter>)getJsonGetAdapter;

- (void)setDbSetAdapterWithAnAdapter:(id<AnAdapter>)converter;

- (id<AnAdapter>)getDbSetAdapter;

- (void)setDbGetAdapterWithAnAdapter:(id<AnAdapter>)converter;

- (id<AnAdapter>)getDbGetAdapter;

@end

J2OBJC_EMPTY_STATIC_INIT(AnAttrib)

J2OBJC_TYPE_LITERAL_HEADER(AnAttrib)

#define ComValsA2iosAmfibianIntfAnAttrib AnAttrib

#endif // _ComValsA2iosAmfibianIntfAnAttrib_H_
