//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/parser/Request.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/network/parser/Request.h"
#include "im/actor/model/network/parser/RpcScope.h"

@implementation APRequest

- (instancetype)init {
  APRequest_init(self);
  return self;
}

@end

void APRequest_init(APRequest *self) {
  (void) APRpcScope_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequest)
