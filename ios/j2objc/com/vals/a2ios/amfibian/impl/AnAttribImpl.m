//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnAttribImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/vals/a2ios/amfibian/impl/AnAttribImpl.h"
#include "com/vals/a2ios/amfibian/intf/AnAdapter.h"
#include "com/vals/a2ios/amfibian/intf/AnObject.h"
#include "java/lang/Exception.h"
#include "java/lang/reflect/Method.h"

@interface AnAttribImpl () {
 @public
  id<AnObject> parentAnObject_;
  NSString *attribName_;
  NSString *columnName_;
  NSString *jsonName_;
  NSString *dbColumnDefinition_;
  id<AnAdapter> jsonSetAdapter_;
  id<AnAdapter> jsonGetAdapter_;
  id<AnAdapter> dbSetAdapter_;
  id<AnAdapter> dbGetAdapter_;
}

- (void)init__WithNSString:(NSString *)attribName
              withNSString:(NSString *)columnName
              withNSString:(NSString *)jsonName OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(AnAttribImpl, parentAnObject_, id<AnObject>)
J2OBJC_FIELD_SETTER(AnAttribImpl, attribName_, NSString *)
J2OBJC_FIELD_SETTER(AnAttribImpl, columnName_, NSString *)
J2OBJC_FIELD_SETTER(AnAttribImpl, jsonName_, NSString *)
J2OBJC_FIELD_SETTER(AnAttribImpl, dbColumnDefinition_, NSString *)
J2OBJC_FIELD_SETTER(AnAttribImpl, jsonSetAdapter_, id<AnAdapter>)
J2OBJC_FIELD_SETTER(AnAttribImpl, jsonGetAdapter_, id<AnAdapter>)
J2OBJC_FIELD_SETTER(AnAttribImpl, dbSetAdapter_, id<AnAdapter>)
J2OBJC_FIELD_SETTER(AnAttribImpl, dbGetAdapter_, id<AnAdapter>)

__attribute__((unused)) static void AnAttribImpl_init__WithNSString_withNSString_withNSString_(AnAttribImpl *self, NSString *attribName, NSString *columnName, NSString *jsonName);

@implementation AnAttribImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AnAttribImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)attribName
                    withNSString:(NSString *)columnName
                    withNSString:(NSString *)jsonName {
  AnAttribImpl_initWithNSString_withNSString_withNSString_(self, attribName, columnName, jsonName);
  return self;
}

- (void)init__WithNSString:(NSString *)attribName
              withNSString:(NSString *)columnName
              withNSString:(NSString *)jsonName {
  AnAttribImpl_init__WithNSString_withNSString_withNSString_(self, attribName, columnName, jsonName);
}

- (instancetype)initWithNSString:(NSString *)attribColumnJsonName {
  AnAttribImpl_initWithNSString_(self, attribColumnJsonName);
  return self;
}

- (NSString *)getDbColumnDefinition {
  return dbColumnDefinition_;
}

- (void)setDbColumnDefinitionWithNSString:(NSString *)dbColumnDefinition {
  self->dbColumnDefinition_ = dbColumnDefinition;
}

- (void)setJsonSetAdapterWithAnAdapter:(id<AnAdapter>)adapter {
  self->jsonSetAdapter_ = adapter;
}

- (id<AnAdapter>)getJsonSetAdapter {
  return jsonSetAdapter_;
}

- (void)setJsonGetAdapterWithAnAdapter:(id<AnAdapter>)adapter {
  self->jsonGetAdapter_ = adapter;
}

- (id<AnAdapter>)getJsonGetAdapter {
  return self->jsonGetAdapter_;
}

- (void)setDbSetAdapterWithAnAdapter:(id<AnAdapter>)adapter {
  self->dbSetAdapter_ = adapter;
}

- (id<AnAdapter>)getDbSetAdapter {
  return dbSetAdapter_;
}

- (void)setDbGetAdapterWithAnAdapter:(id<AnAdapter>)adapter {
  self->dbGetAdapter_ = adapter;
}

- (id<AnAdapter>)getDbGetAdapter {
  return self->dbGetAdapter_;
}

- (void)setAnObjectWithAnObject:(id<AnObject>)anObject {
  self->parentAnObject_ = anObject;
}

- (id<AnObject>)getAnObject {
  return self->parentAnObject_;
}

- (NSString *)getAttribName {
  return attribName_;
}

- (void)setAttribNameWithNSString:(NSString *)attribName {
  self->attribName_ = attribName;
}

- (NSString *)getJsonName {
  return jsonName_;
}

- (NSString *)getColumnName {
  return columnName_;
}

- (void)setColumnNameWithNSString:(NSString *)columnName {
  self->columnName_ = columnName;
}

- (void)setValueWithId:(id)value {
  JavaLangReflectMethod *m = [self getSetter];
  (void) [((JavaLangReflectMethod *) nil_chk(m)) invokeWithId:[((id<AnObject>) nil_chk(parentAnObject_)) getNativeObject] withNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ value } count:1 type:NSObject_class_()]];
}

- (void)setValueWithId:(id)value
         withAnAdapter:(id<AnAdapter>)adapter {
  if (adapter != nil) {
    [self setValueWithId:[adapter convertWithAnAttrib:self withId:value]];
  }
  else {
    [self setValueWithId:value];
  }
}

- (id)getValue {
  return [self getValueWithAnAdapter:nil];
}

- (id)getValueWithAnAdapter:(id<AnAdapter>)adapter {
  id value = nil;
  JavaLangReflectMethod *m = [self getGetter];
  if (m != nil) {
    value = [m invokeWithId:[((id<AnObject>) nil_chk(parentAnObject_)) getNativeObject] withNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]];
    if (adapter != nil) {
      value = [adapter convertWithAnAttrib:self withId:value];
      return value;
    }
  }
  return value;
}

- (JavaLangReflectMethod *)getGetter {
  IOSObjectArray *methods = [((IOSClass *) nil_chk([((id<AnObject>) nil_chk(parentAnObject_)) getNativeClass])) getMethods];
  {
    IOSObjectArray *a__ = methods;
    JavaLangReflectMethod * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaLangReflectMethod * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaLangReflectMethod *m = *b__++;
      if ([((NSString *) nil_chk([((JavaLangReflectMethod *) nil_chk(m)) getName])) equalsIgnoreCase:JreStrcat("$$", @"get", attribName_)]) {
        return m;
      }
    }
  }
  return nil;
}

- (JavaLangReflectMethod *)getSetter {
  IOSObjectArray *methods = [((IOSClass *) nil_chk([((id<AnObject>) nil_chk(parentAnObject_)) getNativeClass])) getMethods];
  {
    IOSObjectArray *a__ = methods;
    JavaLangReflectMethod * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    JavaLangReflectMethod * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      JavaLangReflectMethod *m = *b__++;
      if ([((NSString *) nil_chk([((JavaLangReflectMethod *) nil_chk(m)) getName])) equalsIgnoreCase:JreStrcat("$$", @"set", attribName_)]) {
        return m;
      }
    }
  }
  return nil;
}

- (IOSClass *)getAttribClass {
  JavaLangReflectMethod *m = [self getGetter];
  if (m != nil) {
    IOSClass *rt = [m getReturnType];
    return rt;
  }
  return nil;
}

- (void)setJsonNameWithNSString:(NSString *)jsonName {
  self->jsonName_ = jsonName;
}

@end

void AnAttribImpl_init(AnAttribImpl *self) {
  (void) NSObject_init(self);
}

AnAttribImpl *new_AnAttribImpl_init() {
  AnAttribImpl *self = [AnAttribImpl alloc];
  AnAttribImpl_init(self);
  return self;
}

void AnAttribImpl_initWithNSString_withNSString_withNSString_(AnAttribImpl *self, NSString *attribName, NSString *columnName, NSString *jsonName) {
  (void) NSObject_init(self);
  AnAttribImpl_init__WithNSString_withNSString_withNSString_(self, attribName, columnName, jsonName);
}

AnAttribImpl *new_AnAttribImpl_initWithNSString_withNSString_withNSString_(NSString *attribName, NSString *columnName, NSString *jsonName) {
  AnAttribImpl *self = [AnAttribImpl alloc];
  AnAttribImpl_initWithNSString_withNSString_withNSString_(self, attribName, columnName, jsonName);
  return self;
}

void AnAttribImpl_init__WithNSString_withNSString_withNSString_(AnAttribImpl *self, NSString *attribName, NSString *columnName, NSString *jsonName) {
  self->attribName_ = attribName;
  if (columnName == nil || [@"" isEqual:[columnName trim]]) {
    self->columnName_ = attribName;
  }
  else if ([@"null" isEqual:[columnName trim]]) {
    self->columnName_ = nil;
  }
  else {
    self->columnName_ = columnName;
  }
  if (jsonName == nil || [@"" isEqual:[jsonName trim]]) {
    self->jsonName_ = attribName;
  }
  else if ([@"null" isEqual:[jsonName trim]]) {
    self->jsonName_ = nil;
  }
  else {
    self->jsonName_ = jsonName;
  }
}

void AnAttribImpl_initWithNSString_(AnAttribImpl *self, NSString *attribColumnJsonName) {
  (void) NSObject_init(self);
  if ([((NSString *) nil_chk(attribColumnJsonName)) indexOfString:@","] != -1) {
    NSString *an = nil, *cn = nil, *jn = nil;
    IOSObjectArray *propColumn = [attribColumnJsonName split:@","];
    an = [((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(propColumn), 0))) trim];
    if (propColumn->size_ > 1 && IOSObjectArray_Get(propColumn, 1) != nil) {
      cn = [((NSString *) nil_chk(IOSObjectArray_Get(propColumn, 1))) trim];
    }
    if (propColumn->size_ > 2 && IOSObjectArray_Get(propColumn, 2) != nil) {
      jn = [((NSString *) nil_chk(IOSObjectArray_Get(propColumn, 2))) trim];
    }
    AnAttribImpl_init__WithNSString_withNSString_withNSString_(self, an, cn, jn);
  }
  else {
    AnAttribImpl_init__WithNSString_withNSString_withNSString_(self, attribColumnJsonName, nil, nil);
  }
}

AnAttribImpl *new_AnAttribImpl_initWithNSString_(NSString *attribColumnJsonName) {
  AnAttribImpl *self = [AnAttribImpl alloc];
  AnAttribImpl_initWithNSString_(self, attribColumnJsonName);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AnAttribImpl)
