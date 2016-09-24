//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/Demo.java
//

#ifndef _ComProdValsAndr_demo_prjDemo_H_
#define _ComProdValsAndr_demo_prjDemo_H_

#include "J2ObjC_header.h"
#include "com/prod/vals/andr_demo_prj/DemoBase.h"

@protocol AnObject;
@protocol AnOrm;

@interface Demo : DemoBase

#pragma mark Public

- (instancetype)init;

- (void)amfibianAssociationTests;

- (void)amfibianOperations;

- (void)anUpdateOperationsWithAnObject:(id<AnObject>)anAppointment;

- (void)bindUiWithId:(id)title
              withId:(id)sqlighterHelloLabel
              withId:(id)sqlighterDetailsLabel
              withId:(id)sqlighterStartButton
              withId:(id)amfibianHelloLabel
              withId:(id)amfibianDetailsLabel
              withId:(id)amfibianStartButton
              withId:(id)mobilighterCredit;

- (void)extraAmfibianTestsWithAnOrm:(id<AnOrm>)anOrm;

- (void)sqlighterOperations;

@end

J2OBJC_EMPTY_STATIC_INIT(Demo)

FOUNDATION_EXPORT void Demo_init(Demo *self);

FOUNDATION_EXPORT Demo *new_Demo_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(Demo)

@compatibility_alias ComProdValsAndr_demo_prjDemo Demo;

#endif // _ComProdValsAndr_demo_prjDemo_H_
