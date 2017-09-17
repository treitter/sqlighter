//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/DemoDefaultGetAdapter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/prod/vals/andr_demo_prj/DemoDefaultGetAdapter.h"
#include "com/vals/a2ios/amfibian/intf/AnAttrib.h"
#include "java/lang/Long.h"
#include "java/util/Date.h"

@implementation DemoDefaultGetAdapter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DemoDefaultGetAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)convertWithAnAttrib:(id<AnAttrib>)attrib
                   withId:(id)value {
  if (value != nil && [value isKindOfClass:[JavaUtilDate class]]) {
    JavaUtilDate *d = (JavaUtilDate *) cast_chk(value, [JavaUtilDate class]);
    return new_JavaLangLong_initWithLong_([d getTime]);
  }
  return value;
}

- (void)onWarningWithIOSClass:(IOSClass *)cluss
                 withNSString:(NSString *)attribName
                       withId:(id)value {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(convertWithAnAttrib:withId:);
  methods[2].selector = @selector(onWarningWithIOSClass:withNSString:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "convert", "LAnAttrib;LNSObject;", "onWarning", "LIOSClass;LNSString;LNSObject;" };
  static const J2ObjcClassInfo _DemoDefaultGetAdapter = { "DemoDefaultGetAdapter", "com.prod.vals.andr_demo_prj", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_DemoDefaultGetAdapter;
}

@end

void DemoDefaultGetAdapter_init(DemoDefaultGetAdapter *self) {
  NSObject_init(self);
}

DemoDefaultGetAdapter *new_DemoDefaultGetAdapter_init() {
  J2OBJC_NEW_IMPL(DemoDefaultGetAdapter, init)
}

DemoDefaultGetAdapter *create_DemoDefaultGetAdapter_init() {
  J2OBJC_CREATE_IMPL(DemoDefaultGetAdapter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DemoDefaultGetAdapter)
