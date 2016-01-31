//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/Demo.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/prod/vals/andr_demo_prj/Appointment.h"
#include "com/prod/vals/andr_demo_prj/Bootstrap.h"
#include "com/prod/vals/andr_demo_prj/Demo.h"
#include "com/prod/vals/andr_demo_prj/DemoBase.h"
#include "com/prod/vals/andr_demo_prj/Entity.h"
#include "com/vals/a2ios/amfibian/impl/AnObjectImpl.h"
#include "com/vals/a2ios/amfibian/impl/AnOrmImpl.h"
#include "com/vals/a2ios/amfibian/impl/AnUpgradeImpl.h"
#include "com/vals/a2ios/amfibian/intf/AnObject.h"
#include "com/vals/a2ios/amfibian/intf/AnOrm.h"
#include "com/vals/a2ios/amfibian/intf/AnSql.h"
#include "com/vals/a2ios/amfibian/intf/AnUpgrade.h"
#include "com/vals/a2ios/mobilighter/intf/MobilAction.h"
#include "com/vals/a2ios/mobilighter/intf/Mobilighter.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterDb.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterRs.h"
#include "java/io/PrintStream.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Date.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "org/json/JSONObject.h"

static id<AnObject> Demo_anAppointmentObject_;
J2OBJC_STATIC_FIELD_GETTER(Demo, anAppointmentObject_, id<AnObject>)
J2OBJC_STATIC_FIELD_SETTER(Demo, anAppointmentObject_, id<AnObject>)

@interface Demo_$1 : AnUpgradeImpl {
 @public
  id<JavaUtilList> updateKeys_;
}

- (id<JavaUtilList>)getTasksByKeyWithNSString:(NSString *)key;

- (id<JavaUtilList>)getUpdateKeys;

- (void)setUpdateKeysWithJavaUtilList:(id<JavaUtilList>)updateKeys;

- (instancetype)initWithSQLighterDb:(id<SQLighterDb>)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(Demo_$1)

J2OBJC_FIELD_SETTER(Demo_$1, updateKeys_, id<JavaUtilList>)

__attribute__((unused)) static void Demo_$1_initWithSQLighterDb_(Demo_$1 *self, id<SQLighterDb> arg$0);

__attribute__((unused)) static Demo_$1 *new_Demo_$1_initWithSQLighterDb_(id<SQLighterDb> arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(Demo_$1)

@interface Demo_$2 : NSObject < MobilAction > {
 @public
  id<Mobilighter> val$mobilighter_;
  id val$sqlighterStartButton_;
  id val$amfibianStartButton_;
}

- (void)onActionWithId:(id)param;

- (instancetype)initWithMobilighter:(id<Mobilighter>)capture$0
                             withId:(id)capture$1
                             withId:(id)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(Demo_$2)

J2OBJC_FIELD_SETTER(Demo_$2, val$mobilighter_, id<Mobilighter>)
J2OBJC_FIELD_SETTER(Demo_$2, val$sqlighterStartButton_, id)
J2OBJC_FIELD_SETTER(Demo_$2, val$amfibianStartButton_, id)

__attribute__((unused)) static void Demo_$2_initWithMobilighter_withId_withId_(Demo_$2 *self, id<Mobilighter> capture$0, id capture$1, id capture$2);

__attribute__((unused)) static Demo_$2 *new_Demo_$2_initWithMobilighter_withId_withId_(id<Mobilighter> capture$0, id capture$1, id capture$2) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(Demo_$2)

@interface Demo_$3 : NSObject < MobilAction > {
 @public
  id<Mobilighter> val$mobilighter_;
  id val$amfibianStartButton_;
}

- (void)onActionWithId:(id)param;

- (instancetype)initWithMobilighter:(id<Mobilighter>)capture$0
                             withId:(id)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(Demo_$3)

J2OBJC_FIELD_SETTER(Demo_$3, val$mobilighter_, id<Mobilighter>)
J2OBJC_FIELD_SETTER(Demo_$3, val$amfibianStartButton_, id)

__attribute__((unused)) static void Demo_$3_initWithMobilighter_withId_(Demo_$3 *self, id<Mobilighter> capture$0, id capture$1);

__attribute__((unused)) static Demo_$3 *new_Demo_$3_initWithMobilighter_withId_(id<Mobilighter> capture$0, id capture$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(Demo_$3)

@implementation Demo

+ (void)sqlighterOperations {
  Demo_sqlighterOperations();
}

+ (void)amfibianOperations {
  Demo_amfibianOperations();
}

+ (void)anUpdateOperationsWithAnObject:(id<AnObject>)anAppointment {
  Demo_anUpdateOperationsWithAnObject_(anAppointment);
}

+ (void)bindUiWithId:(id)title
              withId:(id)sqlighterHelloLabel
              withId:(id)sqlighterDetailsLabel
              withId:(id)sqlighterStartButton
              withId:(id)amfibianHelloLabel
              withId:(id)amfibianDetailsLabel
              withId:(id)amfibianStartButton
              withId:(id)mobilighterCredit {
  Demo_bindUiWithId_withId_withId_withId_withId_withId_withId_withId_(title, sqlighterHelloLabel, sqlighterDetailsLabel, sqlighterStartButton, amfibianHelloLabel, amfibianDetailsLabel, amfibianStartButton, mobilighterCredit);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  Demo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

@end

void Demo_sqlighterOperations() {
  Demo_initialize();
  NSString *greetingStr = nil;
  @try {
    DemoBase_resetTestCounters();
    id<SQLighterRs> rs = nil;
    id<SQLighterDb> db = [((Bootstrap *) nil_chk(Bootstrap_getInstance())) getSqLighterDb];
    DemoBase_printUserTableWithNSString_withSQLighterDb_(@"initial state ", db);
    NSString *userName = @"user 5";
    NSString *userEmail = @"user5@email.com";
    JavaLangDouble *userHeight = JavaLangDouble_valueOfWithDouble_(5.67);
    NSString *blobString = @"Hello, SQLighter!";
    JavaLangLong *insertedId = JavaLangLong_valueOfWithLong_(5l);
    [((id<SQLighterDb>) nil_chk(db)) addParamWithNSString:userName];
    [db addParamWithNSString:userEmail];
    NSString *dataStr = blobString;
    IOSByteArray *data = [dataStr getBytes];
    [db addParamWithByteArray:data];
    [db addParamWithDouble:[userHeight doubleValue]];
    JavaLangLong *rowId = [db executeChangeWithNSString:@"insert into user( name, email, data, height) values (?, ?, ?, ?)"];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$@", @"Inserted id: ", rowId)];
    [db addParamWithNSString:userEmail];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"check if the record was inserted"];
    rs = [db executeSelectWithNSString:@"select id, email, name, data, height from user where email = ?"];
    DemoBase_startTestWithNSString_(@"insert/select test");
    while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      DemoBase_finishTestWithBoolean_(DemoBase_verifyRecordWithSQLighterRs_withNSString_withNSString_withJavaLangDouble_withNSString_withJavaLangLong_(rs, userName, userEmail, userHeight, blobString, insertedId));
    }
    [rs close];
    [db addParamNull];
    [db addParamWithNSString:userEmail];
    JavaLangLong *alteredRows = [db executeChangeWithNSString:@"update user set email = ? where email = ?"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @"Updated row count: ", alteredRows)];
    DemoBase_checkTestWithNSString_withBoolean_(@"update row count", [((JavaLangLong *) nil_chk(alteredRows)) isEqual:JavaLangLong_valueOfWithLong_(1l)]);
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"check if null was set"];
    [db addParamWithLong:[insertedId longLongValue]];
    rs = [db executeSelectWithNSString:@"select email from user where id = ?"];
    DemoBase_startTestWithNSString_(@"null handling");
    while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      DemoBase_finishTestWithBoolean_([rs isNullWithInt:0]);
    }
    [rs close];
    DemoBase_printUserTableWithNSString_withSQLighterDb_(@"after update state 1 ", db);
    [db addParamWithNSString:userEmail];
    [db addParamWithNSString:userEmail];
    alteredRows = [db executeChangeWithNSString:@"update user set email = ? where email is null or email = ?"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @"Updated row count: ", alteredRows)];
    DemoBase_checkTestWithNSString_withBoolean_(@"batch update", [((JavaLangLong *) nil_chk(alteredRows)) isEqual:JavaLangLong_valueOfWithLong_(2l)]);
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"after update state 2"];
    rs = [db executeSelectWithNSString:@"select id, email, name, data, height from user"];
    jint counter = 0;
    while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      DemoBase_printWithSQLighterRs_(rs);
      NSString *s = [rs getStringWithInt:1];
      if (![userEmail isEqual:s]) {
        NSNumber *id_ = [rs getLongWithInt:0];
        [db addParamWithNSString:@"inloop@email.com"];
        [db addParamWithLong:[((NSNumber *) nil_chk(id_)) longLongValue]];
        alteredRows = [db executeChangeWithNSString:@"update user set email = ? where id = ?"];
        counter += [((JavaLangLong *) nil_chk(alteredRows)) longLongValue];
      }
    }
    DemoBase_checkTestWithNSString_withBoolean_(@"nested query update", counter == 3);
    [rs close];
    [db addParamWithLong:2];
    alteredRows = [db executeChangeWithNSString:@"delete from user where id = ?"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @"Deleted rows: ", alteredRows)];
    DemoBase_checkTestWithNSString_withBoolean_(@"delete test", [((JavaLangLong *) nil_chk(alteredRows)) isEqual:JavaLangLong_valueOfWithLong_(1l)]);
    DemoBase_printUserTableWithNSString_withSQLighterDb_(@"after delete state", db);
    alteredRows = [db executeChangeWithNSString:@"create table address(id integer primary key autoincrement unique, name text, user_id integer, update_date text)"];
    [db addParamWithNSString:@"123 main str, walnut creek, ca"];
    [db addParamWithLong:1];
    JavaUtilDate *dateNow = new_JavaUtilDate_init();
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$$", @"Date now: ", [dateNow description])];
    [db addParamWithJavaUtilDate:new_JavaUtilDate_init()];
    (void) [db executeChangeWithNSString:@"insert into address(name, user_id, update_date) values(?, ?, ?)"];
    [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:@"after address creation/population"];
    rs = [db executeSelectWithNSString:@"select a.user_id, u.email, u.name, u.data, u.height, a.name, a.update_date from user u, address a where a.user_id = u.id"];
    while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      DemoBase_printWithSQLighterRs_(rs);
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$$", @" address: ", [rs getStringWithInt:5])];
      JavaUtilDate *date = [rs getDateWithInt:6];
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @" update_date: ", date)];
      dateNow = [db getDateWithoutMillisWithJavaUtilDate:dateNow];
      DemoBase_checkTestWithNSString_withBoolean_(@"date handling test", [((JavaUtilDate *) nil_chk(date)) isEqual:dateNow]);
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:JreStrcat("$@", @" update_date: ", [rs getObjectWithInt:6])];
    }
    [rs close];
    DemoBase_startTestWithNSString_(@"transaction/exception handling");
    @try {
      [db beginTransaction];
      [db addParamWithNSString:@"trans@email.com"];
      [db addParamWithNSString:@"inloop@email.com"];
      (void) [db executeChangeWithNSString:@"update user set email = ? where email = ?"];
      DemoBase_printUserTableWithNSString_withSQLighterDb_(@"inside transaction", db);
      [db addParamWithNSString:@"inloop2@email.com"];
      [db addParamWithNSString:@"trans@email.com"];
      (void) [db executeChangeWithNSString:@"updte user set email = ? where email = ?"];
      [db commitTransaction];
    }
    @catch (JavaLangThrowable *e) {
      [JreLoadStatic(JavaLangSystem, out_) printlnWithNSString:[((JavaLangThrowable *) nil_chk(e)) getMessage]];
      [db rollbackTransaction];
      DemoBase_finishTestWithBoolean_(true);
    }
    DemoBase_printUserTableWithNSString_withSQLighterDb_(@"after transaction commit or rollback", db);
    [db addParamWithDouble:5.67];
    rs = [db executeSelectWithNSString:@"select data from user where height = ?"];
    if ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      IOSByteArray *greet = [rs getBlobWithInt:0];
      greetingStr = [NSString stringWithBytes:greet];
    }
    [rs close];
  }
  @catch (JavaLangException *e) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:[((JavaLangException *) nil_chk(e)) getMessage]];
    [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, sqlighterHelloLabel_) withNSString:@"SQLighter DemoBase did not pass"];
    [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, sqlighterDetailsLabel_) withNSString:JreStrcat("$$", @"Exception: ", [e getMessage])];
    return;
  }
  if (!DemoBase_testSummaryCheck()) {
    [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, sqlighterHelloLabel_) withNSString:@"SQLighter DemoBase did not pass"];
    [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, sqlighterDetailsLabel_) withNSString:@"One or more tests failed"];
    return;
  }
  [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, sqlighterHelloLabel_) withNSString:greetingStr];
  [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, sqlighterDetailsLabel_) withNSString:@"All tests passed."];
  return;
}

void Demo_amfibianOperations() {
  Demo_initialize();
  @try {
    DemoBase_resetTestCounters();
    id<SQLighterDb> sqlighterDb = [((Bootstrap *) nil_chk(Bootstrap_getInstance())) getSqLighterDb];
    NSString *jsonAppointment234 = @"{id: \"234\", name: \"Meet AmfibiaN!\", isProcessed: \"0\"}";
    id<AnObject> anEntity = new_AnObjectImpl_initWithIOSClass_withNSStringArray_(Entity_class_(), [IOSObjectArray newArrayWithObjects:(id[]){ @"id" } count:1 type:NSString_class_()]);
    id<AnOrm> anOrm = new_AnOrmImpl_initWithSQLighterDb_withNSString_withIOSClass_withNSStringArray_withAnObject_(sqlighterDb, @"appointment", Appointment_class_(), [IOSObjectArray newArrayWithObjects:(id[]){ @"name", @"isProcessed,is_processed" } count:2 type:NSString_class_()], anEntity);
    Appointment *appointment234 = [anOrm asNativeObjectWithNSString:jsonAppointment234];
    DemoBase_checkTestWithNSString_withBoolean_(@"JSON 2 native mapping", [((JavaLangInteger *) nil_chk([((Appointment *) nil_chk(appointment234)) getId])) isEqual:JavaLangInteger_valueOfWithInt_(234)] && [((NSString *) nil_chk([appointment234 getName])) isEqual:@"Meet AmfibiaN!"] && [((JavaLangInteger *) nil_chk([appointment234 getIsProcessed])) isEqual:JavaLangInteger_valueOfWithInt_(0)]);
    NSString *createAppointmentTableSql = [((id<AnSql>) nil_chk([anOrm startSqlCreate])) getQueryString];
    (void) [((id<SQLighterDb>) nil_chk(sqlighterDb)) executeChangeWithNSString:createAppointmentTableSql];
    [anOrm startSqlInsertWithId:appointment234];
    JavaLangLong *rowsAffected = [anOrm apply];
    DemoBase_checkTestWithNSString_withBoolean_(@"orm insert", [((JavaLangLong *) nil_chk(rowsAffected)) isEqual:JavaLangLong_valueOfWithLong_(1l)]);
    DemoBase_printAppointmentsWithAnOrm_(anOrm);
    Appointment *appointment456 = new_Appointment_init();
    [appointment456 setNameWithNSString:@"Appointment #456"];
    [appointment456 setIsProcessedWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(0)];
    [appointment456 setIdWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(456)];
    [anOrm startSqlInsertWithId:appointment456];
    (void) [anOrm apply];
    DemoBase_printAppointmentsWithAnOrm_(anOrm);
    [appointment234 setIsProcessedWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(1)];
    [anOrm startSqlUpdateWithId:appointment234];
    [anOrm addWhereWithNSString:@"id = ?" withId:[appointment234 getId]];
    rowsAffected = [anOrm apply];
    DemoBase_checkTestWithNSString_withBoolean_(@"orm update", [((JavaLangLong *) nil_chk(rowsAffected)) isEqual:JavaLangLong_valueOfWithLong_(1l)]);
    DemoBase_printAppointmentsWithAnOrm_(anOrm);
    [anOrm startSqlSelect];
    [anOrm addWhereWithNSString:@"id = ?" withId:JavaLangInteger_valueOfWithInt_(234)];
    Appointment *meetAmfibianAppointment = [anOrm getSingleResult];
    if (meetAmfibianAppointment != nil) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:JreStrcat("$$", @"Back to JSON string\nbecause we might want to send it\nback to the server like so: ", [anOrm asJsonStringWithId:meetAmfibianAppointment])];
      OrgJsonJSONObject *jsonObject = [anOrm asJSONObjectWithId:meetAmfibianAppointment];
      NSString *name = (NSString *) check_class_cast([((OrgJsonJSONObject *) nil_chk(jsonObject)) getWithNSString:@"name"], [NSString class]);
      DemoBase_checkTestWithNSString_withBoolean_(@"native to JSON", [((NSString *) nil_chk(name)) isEqual:@"Meet AmfibiaN!"]);
      Demo_anUpdateOperationsWithAnObject_(anOrm);
      DemoBase_extraAmfibianTestsWithAnOrm_(anOrm);
      if (!DemoBase_testSummaryCheck()) {
        [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, amfibianHelloLabel_) withNSString:@"AmfibiaN DemoBase did not pass"];
        [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, amfibianDetailsLabel_) withNSString:@"One or more tests failed"];
        return;
      }
      [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, amfibianHelloLabel_) withNSString:name];
      [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, amfibianDetailsLabel_) withNSString:@"All tests passed."];
      return;
    }
  }
  @catch (JavaLangException *e) {
    [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, amfibianHelloLabel_) withNSString:@"AmfibiaN DemoBase did not pass"];
    [((id<Mobilighter>) nil_chk([((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter])) setTextWithId:JreLoadStatic(DemoBase, amfibianDetailsLabel_) withNSString:[((JavaLangException *) nil_chk(e)) getMessage]];
    return;
  }
}

void Demo_anUpdateOperationsWithAnObject_(id<AnObject> anAppointment) {
  Demo_initialize();
  @try {
    Demo_anAppointmentObject_ = anAppointment;
    id<SQLighterDb> db = [((Bootstrap *) nil_chk(Bootstrap_getInstance())) getSqLighterDb];
    id<AnUpgrade> anUpgrade = new_Demo_$1_initWithSQLighterDb_(db);
    id<JavaUtilList> keys = new_JavaUtilLinkedList_init();
    jint upgradeCount;
    [keys addWithId:@"2015-12-19"];
    [anUpgrade setUpdateKeysWithJavaUtilList:keys];
    upgradeCount = [anUpgrade applyUpdates];
    id<SQLighterRs> rs = [((id<SQLighterDb>) nil_chk(db)) executeSelectWithNSString:@"select count(*) from db_upg_test"];
    if ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      JavaLangLong *cnt = [rs getLongWithInt:0];
      DemoBase_checkTestWithNSString_withBoolean_(@"database upgrade step 1", [((JavaLangLong *) nil_chk(cnt)) longLongValue] == 1 && upgradeCount == 1);
    }
    [rs close];
    [keys addWithId:@"2015-12-25"];
    [keys addWithId:@"2015-12-25--01"];
    DemoBase_startTestWithNSString_(@"database upgrade step 2");
    upgradeCount = [anUpgrade applyUpdates];
    rs = [db executeSelectWithNSString:@"select email from db_upg_test where email is not null"];
    if ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
      NSString *email = [rs getStringWithInt:0];
      DemoBase_finishTestWithBoolean_([@"peter@email.com" isEqual:email] && upgradeCount == 2);
    }
    [rs close];
    @try {
      rs = [db executeSelectWithNSString:@"select email from db_upg_test where email is not null"];
      [((id<SQLighterRs>) nil_chk(rs)) hasNext];
    }
    @catch (JavaLangException *t) {
      DemoBase_finishTestWithBoolean_(true);
    }
    @finally {
      [((id<SQLighterRs>) nil_chk(rs)) close];
    }
    [keys addWithId:@"2016-01-26"];
    [keys addWithId:AnUpgrade_DB_RECOVER_KEY_];
    upgradeCount = [anUpgrade applyUpdates];
    DemoBase_checkTestWithNSString_withBoolean_(@"Failure during DB upgrade", upgradeCount == -1);
    DemoBase_startTestWithNSString_(@"db recovery test");
    if (upgradeCount == -1) {
      [db close];
      [db deleteDBFile];
      [db openIfClosed];
      upgradeCount = [anUpgrade attemptToRecover];
      DemoBase_finishTestWithBoolean_(upgradeCount == 1);
    }
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out_))) printlnWithNSString:@"done with AnUpdate"];
  }
  @catch (JavaLangThrowable *t) {
    DemoBase_makeTestsFail();
    [((JavaLangThrowable *) nil_chk(t)) printStackTrace];
  }
}

void Demo_bindUiWithId_withId_withId_withId_withId_withId_withId_withId_(id title, id sqlighterHelloLabel, id sqlighterDetailsLabel, id sqlighterStartButton, id amfibianHelloLabel, id amfibianDetailsLabel, id amfibianStartButton, id mobilighterCredit) {
  Demo_initialize();
  *JreLoadStaticRef(DemoBase, sqlighterHelloLabel_) = sqlighterHelloLabel;
  *JreLoadStaticRef(DemoBase, sqlighterDetailsLabel_) = sqlighterDetailsLabel;
  *JreLoadStaticRef(DemoBase, amfibianHelloLabel_) = amfibianHelloLabel;
  *JreLoadStaticRef(DemoBase, amfibianDetailsLabel_) = amfibianDetailsLabel;
  id<Mobilighter> mobilighter = [((Bootstrap *) nil_chk(Bootstrap_getInstance())) getMobilighter];
  [((id<Mobilighter>) nil_chk(mobilighter)) setTextWithId:title withNSString:@"Welcome to SQLighter demo."];
  [mobilighter setTextWithId:mobilighterCredit withNSString:@"UI controled by Mobilighter."];
  [mobilighter setTextWithId:sqlighterHelloLabel withNSString:@""];
  [mobilighter setTextWithId:amfibianHelloLabel withNSString:@""];
  [mobilighter setTextWithId:sqlighterDetailsLabel withNSString:@""];
  [mobilighter setTextWithId:amfibianDetailsLabel withNSString:@""];
  [mobilighter setTextWithId:sqlighterStartButton withNSString:@"Begin SQLighter tests"];
  [mobilighter setTextWithId:amfibianStartButton withNSString:@"Begin AmfibiaN tests"];
  [mobilighter hideWithId:amfibianStartButton];
  *JreLoadStaticRef(DemoBase, sqlighterStartAction_) = new_Demo_$2_initWithMobilighter_withId_withId_(mobilighter, sqlighterStartButton, amfibianStartButton);
  [mobilighter addActionListenerWithId:sqlighterStartButton withMobilAction:JreLoadStatic(DemoBase, sqlighterStartAction_)];
  *JreLoadStaticRef(DemoBase, amfibianStartAction_) = new_Demo_$3_initWithMobilighter_withId_(mobilighter, amfibianStartButton);
  [mobilighter addActionListenerWithId:amfibianStartButton withMobilAction:JreLoadStatic(DemoBase, amfibianStartAction_)];
}

void Demo_init(Demo *self) {
  (void) DemoBase_init(self);
}

Demo *new_Demo_init() {
  Demo *self = [Demo alloc];
  Demo_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Demo)

@implementation Demo_$1

- (id<JavaUtilList>)getTasksByKeyWithNSString:(NSString *)key {
  id<JavaUtilList> l = new_JavaUtilLinkedList_init();
  if ([@"2015-12-19" isEqual:key]) {
    [l addWithId:@"create table db_drop_test (name text) "];
    [l addWithId:@"create table db_upg_test(name text) "];
    [l addWithId:@"insert into db_upg_test(name) values('Joe')"];
  }
  else if ([@"2015-12-25" isEqual:key]) {
    [l addWithId:@"alter table db_upg_test add column email text "];
    [l addWithId:@"insert into db_upg_test(name,email) values ('Peter', 'peter@email.com')"];
  }
  else if ([@"2015-12-25--01" isEqual:key]) {
    [l addWithId:@"drop table db_drop_test"];
  }
  else if ([@"2016-01-26" isEqual:key]) {
    [l addWithId:@"create tble db_drop_test (name text) "];
  }
  else if ([((NSString *) nil_chk(AnUpgrade_DB_RECOVER_KEY_)) isEqual:key]) {
    [l addWithId:@"create table db_drop_test(name text) "];
    [l addWithId:@"create table db_upg_test(name text) "];
    [l addWithId:JreLoadStatic(Demo, anAppointmentObject_)];
  }
  return l;
}

- (id<JavaUtilList>)getUpdateKeys {
  return updateKeys_;
}

- (void)setUpdateKeysWithJavaUtilList:(id<JavaUtilList>)updateKeys {
  self->updateKeys_ = updateKeys;
}

- (instancetype)initWithSQLighterDb:(id<SQLighterDb>)arg$0 {
  Demo_$1_initWithSQLighterDb_(self, arg$0);
  return self;
}

@end

void Demo_$1_initWithSQLighterDb_(Demo_$1 *self, id<SQLighterDb> arg$0) {
  (void) AnUpgradeImpl_initWithSQLighterDb_(self, arg$0);
  self->updateKeys_ = new_JavaUtilLinkedList_init();
}

Demo_$1 *new_Demo_$1_initWithSQLighterDb_(id<SQLighterDb> arg$0) {
  Demo_$1 *self = [Demo_$1 alloc];
  Demo_$1_initWithSQLighterDb_(self, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Demo_$1)

@implementation Demo_$2

- (void)onActionWithId:(id)param {
  Demo_sqlighterOperations();
  [((id<Mobilighter>) nil_chk(val$mobilighter_)) hideWithId:val$sqlighterStartButton_];
  [val$mobilighter_ showWithId:val$amfibianStartButton_];
}

- (instancetype)initWithMobilighter:(id<Mobilighter>)capture$0
                             withId:(id)capture$1
                             withId:(id)capture$2 {
  Demo_$2_initWithMobilighter_withId_withId_(self, capture$0, capture$1, capture$2);
  return self;
}

@end

void Demo_$2_initWithMobilighter_withId_withId_(Demo_$2 *self, id<Mobilighter> capture$0, id capture$1, id capture$2) {
  self->val$mobilighter_ = capture$0;
  self->val$sqlighterStartButton_ = capture$1;
  self->val$amfibianStartButton_ = capture$2;
  (void) NSObject_init(self);
}

Demo_$2 *new_Demo_$2_initWithMobilighter_withId_withId_(id<Mobilighter> capture$0, id capture$1, id capture$2) {
  Demo_$2 *self = [Demo_$2 alloc];
  Demo_$2_initWithMobilighter_withId_withId_(self, capture$0, capture$1, capture$2);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Demo_$2)

@implementation Demo_$3

- (void)onActionWithId:(id)param {
  Demo_amfibianOperations();
  [((id<Mobilighter>) nil_chk(val$mobilighter_)) hideWithId:val$amfibianStartButton_];
}

- (instancetype)initWithMobilighter:(id<Mobilighter>)capture$0
                             withId:(id)capture$1 {
  Demo_$3_initWithMobilighter_withId_(self, capture$0, capture$1);
  return self;
}

@end

void Demo_$3_initWithMobilighter_withId_(Demo_$3 *self, id<Mobilighter> capture$0, id capture$1) {
  self->val$mobilighter_ = capture$0;
  self->val$amfibianStartButton_ = capture$1;
  (void) NSObject_init(self);
}

Demo_$3 *new_Demo_$3_initWithMobilighter_withId_(id<Mobilighter> capture$0, id capture$1) {
  Demo_$3 *self = [Demo_$3 alloc];
  Demo_$3_initWithMobilighter_withId_(self, capture$0, capture$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Demo_$3)
