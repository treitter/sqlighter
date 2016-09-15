//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/DemoDefaultSetAdapter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/prod/vals/andr_demo_prj/DemoDefaultSetAdapter.h"
#include "com/vals/a2ios/amfibian/intf/AnAttrib.h"
#include "java/lang/Throwable.h"
#include "java/lang/reflect/Constructor.h"
#include "java/lang/reflect/Method.h"

@implementation DemoDefaultSetAdapter

- (id)convertWithAnAttrib:(id<AnAttrib>)attrib
                   withId:(id)value {
  if (value == nil) {
    return nil;
  }
  IOSClass *objClass = [nil_chk(value) getClass];
  JavaLangReflectMethod *m = [((id<AnAttrib>) nil_chk(attrib)) getSetter];
  NSString *attribName = [attrib getAttribName];
  IOSObjectArray *paramTypes = [((JavaLangReflectMethod *) nil_chk(m)) getParameterTypes];
  IOSClass *p = IOSObjectArray_Get(nil_chk(paramTypes), 0);
  if ([((IOSClass *) nil_chk(p)) isEqual:objClass]) {
    return value;
  }
  IOSObjectArray *cs = [p getConstructors];
  {
    IOSObjectArray *a__ = cs;
    JavaLangReflectConstructor * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaLangReflectConstructor * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaLangReflectConstructor *c = *b__++;
      IOSObjectArray *cParamTypes = [((JavaLangReflectConstructor *) nil_chk(c)) getParameterTypes];
      if (((IOSObjectArray *) nil_chk(cParamTypes))->size_ != 1) {
        continue;
      }
      @try {
        if ([((IOSClass *) nil_chk(IOSObjectArray_Get(cParamTypes, 0))) isEqual:objClass]) {
          id newObject = [c newInstanceWithNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ value } count:1 type:NSObject_class_()]];
          return newObject;
        }
        else if ([((NSString *) nil_chk([objClass getSimpleName])) equalsIgnoreCase:[((IOSClass *) nil_chk(IOSObjectArray_Get(cParamTypes, 0))) getSimpleName]]) {
          id newObject = [c newInstanceWithNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ value } count:1 type:NSObject_class_()]];
          return newObject;
        }
        else if ([((IOSClass *) nil_chk(IOSObjectArray_Get(cParamTypes, 0))) isEqual:NSString_class_()]) {
          id newObject = [c newInstanceWithNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ [value description] } count:1 type:NSObject_class_()]];
          return newObject;
        }
      }
      @catch (JavaLangThrowable *t) {
        [self onWarningWithIOSClass:objClass withNSString:attribName withId:value];
      }
    }
  }
  [self onWarningWithIOSClass:objClass withNSString:attribName withId:value];
  return nil;
}

- (void)onWarningWithIOSClass:(IOSClass *)cluss
                 withNSString:(NSString *)attribName
                       withId:(id)value {
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DemoDefaultSetAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "convertWithAnAttrib:withId:", "convert", "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "onWarningWithIOSClass:withNSString:withId:", "onWarning", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _DemoDefaultSetAdapter = { 2, "DemoDefaultSetAdapter", "com.prod.vals.andr_demo_prj", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_DemoDefaultSetAdapter;
}

@end

void DemoDefaultSetAdapter_init(DemoDefaultSetAdapter *self) {
  (void) NSObject_init(self);
}

DemoDefaultSetAdapter *new_DemoDefaultSetAdapter_init() {
  DemoDefaultSetAdapter *self = [DemoDefaultSetAdapter alloc];
  DemoDefaultSetAdapter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DemoDefaultSetAdapter)
