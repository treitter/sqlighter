//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnIncubatorImpl.java
//

#ifndef _ComValsA2iosAmfibianImplAnIncubatorImpl_H_
#define _ComValsA2iosAmfibianImplAnIncubatorImpl_H_

#include "J2ObjC_header.h"
#include "com/vals/a2ios/amfibian/intf/AnIncubator.h"

@class IOSClass;
@protocol AnOrm;

@interface AnIncubatorImpl : NSObject < AnIncubator >

#pragma mark Public

- (instancetype)init;

- (IOSClass *)getClassByNameWithNSString:(NSString *)name;

- (void)load__WithNSString:(NSString *)jsonString;

- (id<AnOrm>)makeWithIOSClass:(IOSClass *)cluss;

- (id<AnOrm>)makeWithNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(AnIncubatorImpl)

FOUNDATION_EXPORT NSString *AnIncubatorImpl_ADAPTERS_;
J2OBJC_STATIC_FIELD_GETTER(AnIncubatorImpl, ADAPTERS_, NSString *)

FOUNDATION_EXPORT NSString *AnIncubatorImpl_ADAPTER_MAP_;
J2OBJC_STATIC_FIELD_GETTER(AnIncubatorImpl, ADAPTER_MAP_, NSString *)

FOUNDATION_EXPORT NSString *AnIncubatorImpl_CLASS_;
J2OBJC_STATIC_FIELD_GETTER(AnIncubatorImpl, CLASS_, NSString *)

FOUNDATION_EXPORT void AnIncubatorImpl_init(AnIncubatorImpl *self);

J2OBJC_TYPE_LITERAL_HEADER(AnIncubatorImpl)

@compatibility_alias ComValsA2iosAmfibianImplAnIncubatorImpl AnIncubatorImpl;

#endif // _ComValsA2iosAmfibianImplAnIncubatorImpl_H_
