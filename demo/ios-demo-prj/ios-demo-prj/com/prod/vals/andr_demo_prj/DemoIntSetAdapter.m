//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/DemoIntSetAdapter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/prod/vals/andr_demo_prj/DemoIntSetAdapter.h"
#include "com/vals/a2ios/amfibian/intf/AnAttrib.h"
#include "java/lang/Integer.h"

@implementation DemoIntSetAdapter

- (id)convertWithAnAttrib:(id<AnAttrib>)attrib
                   withId:(id)value {
  JavaLangInteger *i = (JavaLangInteger *) check_class_cast(value, [JavaLangInteger class]);
  return JavaLangInteger_valueOfWithInt_([((JavaLangInteger *) nil_chk(i)) intValue] + 1);
}

- (void)onWarningWithIOSClass:(IOSClass *)cluss
                 withNSString:(NSString *)attribName
                       withId:(id)value {
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DemoIntSetAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "convertWithAnAttrib:withId:", "convert", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "onWarningWithIOSClass:withNSString:withId:", "onWarning", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _DemoIntSetAdapter = { 2, "DemoIntSetAdapter", "com.prod.vals.andr_demo_prj", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_DemoIntSetAdapter;
}

@end

void DemoIntSetAdapter_init(DemoIntSetAdapter *self) {
  (void) NSObject_init(self);
}

DemoIntSetAdapter *new_DemoIntSetAdapter_init() {
  DemoIntSetAdapter *self = [DemoIntSetAdapter alloc];
  DemoIntSetAdapter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DemoIntSetAdapter)
