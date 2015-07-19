//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseGetAuthSessions.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/AuthSession.h"
#include "im/actor/model/api/rpc/ResponseGetAuthSessions.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APResponseGetAuthSessions () {
 @public
  id<JavaUtilList> userAuths_;
}

@end

J2OBJC_FIELD_SETTER(APResponseGetAuthSessions, userAuths_, id<JavaUtilList>)

@implementation APResponseGetAuthSessions

+ (APResponseGetAuthSessions *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseGetAuthSessions_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)userAuths {
  APResponseGetAuthSessions_initWithJavaUtilList_(self, userAuths);
  return self;
}

- (instancetype)init {
  APResponseGetAuthSessions_init(self);
  return self;
}

- (id<JavaUtilList>)getUserAuths {
  return self->userAuths_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _userAuths = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_userAuths addWithId:new_APAuthSession_init()];
  }
  self->userAuths_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_userAuths];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->userAuths_];
}

- (NSString *)description {
  NSString *res = @"tuple GetAuthSessions{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseGetAuthSessions_HEADER;
}

@end

APResponseGetAuthSessions *APResponseGetAuthSessions_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseGetAuthSessions_initialize();
  return ((APResponseGetAuthSessions *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseGetAuthSessions_init(), data));
}

void APResponseGetAuthSessions_initWithJavaUtilList_(APResponseGetAuthSessions *self, id<JavaUtilList> userAuths) {
  (void) APResponse_init(self);
  self->userAuths_ = userAuths;
}

APResponseGetAuthSessions *new_APResponseGetAuthSessions_initWithJavaUtilList_(id<JavaUtilList> userAuths) {
  APResponseGetAuthSessions *self = [APResponseGetAuthSessions alloc];
  APResponseGetAuthSessions_initWithJavaUtilList_(self, userAuths);
  return self;
}

void APResponseGetAuthSessions_init(APResponseGetAuthSessions *self) {
  (void) APResponse_init(self);
}

APResponseGetAuthSessions *new_APResponseGetAuthSessions_init() {
  APResponseGetAuthSessions *self = [APResponseGetAuthSessions alloc];
  APResponseGetAuthSessions_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseGetAuthSessions)
