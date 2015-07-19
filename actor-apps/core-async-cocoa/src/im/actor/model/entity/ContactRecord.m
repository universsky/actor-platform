//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/ContactRecord.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/entity/ContactRecord.h"
#include "im/actor/model/entity/ContactRecordType.h"

@interface AMContactRecord () {
 @public
  AMContactRecordTypeEnum *recordType_;
  NSString *recordData_;
  NSString *recordTitle_;
}

@end

J2OBJC_FIELD_SETTER(AMContactRecord, recordType_, AMContactRecordTypeEnum *)
J2OBJC_FIELD_SETTER(AMContactRecord, recordData_, NSString *)
J2OBJC_FIELD_SETTER(AMContactRecord, recordTitle_, NSString *)

@implementation AMContactRecord

- (instancetype)initWithAMContactRecordTypeEnum:(AMContactRecordTypeEnum *)recordType
                                   withNSString:(NSString *)recordData
                                   withNSString:(NSString *)recordTitle {
  AMContactRecord_initWithAMContactRecordTypeEnum_withNSString_withNSString_(self, recordType, recordData, recordTitle);
  return self;
}

- (AMContactRecordTypeEnum *)getRecordType {
  return recordType_;
}

- (NSString *)getRecordData {
  return recordData_;
}

- (NSString *)getRecordTitle {
  return recordTitle_;
}

@end

void AMContactRecord_initWithAMContactRecordTypeEnum_withNSString_withNSString_(AMContactRecord *self, AMContactRecordTypeEnum *recordType, NSString *recordData, NSString *recordTitle) {
  (void) NSObject_init(self);
  self->recordType_ = recordType;
  self->recordData_ = recordData;
  self->recordTitle_ = recordTitle;
}

AMContactRecord *new_AMContactRecord_initWithAMContactRecordTypeEnum_withNSString_withNSString_(AMContactRecordTypeEnum *recordType, NSString *recordData, NSString *recordTitle) {
  AMContactRecord *self = [AMContactRecord alloc];
  AMContactRecord_initWithAMContactRecordTypeEnum_withNSString_withNSString_(self, recordType, recordData, recordTitle);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMContactRecord)
