//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/DemoDefaultSetAdapter.java
//

#ifndef _ComProdValsAndr_demo_prjDemoDefaultSetAdapter_H_
#define _ComProdValsAndr_demo_prjDemoDefaultSetAdapter_H_

#include "J2ObjC_header.h"
#include "com/vals/a2ios/amfibian/intf/AnAdapter.h"

@class IOSClass;
@protocol AnAttrib;

@interface DemoDefaultSetAdapter : NSObject < AnAdapter >

#pragma mark Public

- (instancetype)init;

- (id)convertWithAnAttrib:(id<AnAttrib>)attrib
                   withId:(id)value;

- (void)onWarningWithIOSClass:(IOSClass *)cluss
                 withNSString:(NSString *)attribName
                       withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(DemoDefaultSetAdapter)

FOUNDATION_EXPORT void DemoDefaultSetAdapter_init(DemoDefaultSetAdapter *self);

FOUNDATION_EXPORT DemoDefaultSetAdapter *new_DemoDefaultSetAdapter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(DemoDefaultSetAdapter)

@compatibility_alias ComProdValsAndr_demo_prjDemoDefaultSetAdapter DemoDefaultSetAdapter;

#endif // _ComProdValsAndr_demo_prjDemoDefaultSetAdapter_H_