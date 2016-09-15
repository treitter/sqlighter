//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/DemoAppointmentGetAdapter.java
//

#ifndef _ComProdValsAndr_demo_prjDemoAppointmentGetAdapter_H_
#define _ComProdValsAndr_demo_prjDemoAppointmentGetAdapter_H_

#include "J2ObjC_header.h"
#include "com/vals/a2ios/amfibian/intf/AnAdapter.h"

@class IOSClass;
@protocol AnAttrib;

@interface DemoAppointmentGetAdapter : NSObject < AnAdapter >

#pragma mark Public

- (instancetype)init;

- (id)convertWithAnAttrib:(id<AnAttrib>)attrib
                   withId:(id)value;

- (void)onWarningWithIOSClass:(IOSClass *)cluss
                 withNSString:(NSString *)attribName
                       withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(DemoAppointmentGetAdapter)

FOUNDATION_EXPORT void DemoAppointmentGetAdapter_init(DemoAppointmentGetAdapter *self);

FOUNDATION_EXPORT DemoAppointmentGetAdapter *new_DemoAppointmentGetAdapter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(DemoAppointmentGetAdapter)

@compatibility_alias ComProdValsAndr_demo_prjDemoAppointmentGetAdapter DemoAppointmentGetAdapter;

#endif // _ComProdValsAndr_demo_prjDemoAppointmentGetAdapter_H_
