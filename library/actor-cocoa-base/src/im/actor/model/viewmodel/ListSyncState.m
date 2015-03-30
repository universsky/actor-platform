//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/ListSyncState.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/viewmodel/ListSyncState.h"
#include "java/lang/IllegalArgumentException.h"

BOOL AMListSyncStateEnum_initialized = NO;

AMListSyncStateEnum *AMListSyncStateEnum_values_[3];

@implementation AMListSyncStateEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

IOSObjectArray *AMListSyncStateEnum_values() {
  AMListSyncStateEnum_init();
  return [IOSObjectArray arrayWithObjects:AMListSyncStateEnum_values_ count:3 type:AMListSyncStateEnum_class_()];
}
+ (IOSObjectArray *)values {
  return AMListSyncStateEnum_values();
}

+ (AMListSyncStateEnum *)valueOfWithNSString:(NSString *)name {
  return AMListSyncStateEnum_valueOfWithNSString_(name);
}

AMListSyncStateEnum *AMListSyncStateEnum_valueOfWithNSString_(NSString *name) {
  AMListSyncStateEnum_init();
  for (int i = 0; i < 3; i++) {
    AMListSyncStateEnum *e = AMListSyncStateEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [AMListSyncStateEnum class]) {
    AMListSyncStateEnum_EMPTY_IN_PROGRESS = [[AMListSyncStateEnum alloc] initWithNSString:@"EMPTY_IN_PROGRESS" withInt:0];
    AMListSyncStateEnum_EMPTY_SYNCED = [[AMListSyncStateEnum alloc] initWithNSString:@"EMPTY_SYNCED" withInt:1];
    AMListSyncStateEnum_SYNCED = [[AMListSyncStateEnum alloc] initWithNSString:@"SYNCED" withInt:2];
    J2OBJC_SET_INITIALIZED(AMListSyncStateEnum)
  }
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMListSyncStateEnum)
