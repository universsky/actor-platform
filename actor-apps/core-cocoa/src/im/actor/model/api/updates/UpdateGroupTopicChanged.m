//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupTopicChanged.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupTopicChanged.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateGroupTopicChanged () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  NSString *topic_;
  jlong date_;
}

@end

J2OBJC_FIELD_SETTER(APUpdateGroupTopicChanged, topic_, NSString *)

@implementation APUpdateGroupTopicChanged

+ (APUpdateGroupTopicChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateGroupTopicChanged_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
               withNSString:(NSString *)topic
                   withLong:(jlong)date {
  APUpdateGroupTopicChanged_initWithInt_withLong_withInt_withNSString_withLong_(self, groupId, rid, uid, topic, date);
  return self;
}

- (instancetype)init {
  APUpdateGroupTopicChanged_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getUid {
  return self->uid_;
}

- (NSString *)getTopic {
  return self->topic_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:2];
  self->uid_ = [values getIntWithInt:3];
  self->topic_ = [values optStringWithInt:4];
  self->date_ = [values getLongWithInt:5];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:2 withLong:self->rid_];
  [writer writeIntWithInt:3 withInt:self->uid_];
  if (self->topic_ != nil) {
    [writer writeStringWithInt:4 withNSString:self->topic_];
  }
  [writer writeLongWithInt:5 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update GroupTopicChanged{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", topic=", self->topic_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateGroupTopicChanged_HEADER;
}

@end

APUpdateGroupTopicChanged *APUpdateGroupTopicChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateGroupTopicChanged_initialize();
  return ((APUpdateGroupTopicChanged *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateGroupTopicChanged_init(), data));
}

void APUpdateGroupTopicChanged_initWithInt_withLong_withInt_withNSString_withLong_(APUpdateGroupTopicChanged *self, jint groupId, jlong rid, jint uid, NSString *topic, jlong date) {
  (void) APUpdate_init(self);
  self->groupId_ = groupId;
  self->rid_ = rid;
  self->uid_ = uid;
  self->topic_ = topic;
  self->date_ = date;
}

APUpdateGroupTopicChanged *new_APUpdateGroupTopicChanged_initWithInt_withLong_withInt_withNSString_withLong_(jint groupId, jlong rid, jint uid, NSString *topic, jlong date) {
  APUpdateGroupTopicChanged *self = [APUpdateGroupTopicChanged alloc];
  APUpdateGroupTopicChanged_initWithInt_withLong_withInt_withNSString_withLong_(self, groupId, rid, uid, topic, date);
  return self;
}

void APUpdateGroupTopicChanged_init(APUpdateGroupTopicChanged *self) {
  (void) APUpdate_init(self);
}

APUpdateGroupTopicChanged *new_APUpdateGroupTopicChanged_init() {
  APUpdateGroupTopicChanged *self = [APUpdateGroupTopicChanged alloc];
  APUpdateGroupTopicChanged_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateGroupTopicChanged)
