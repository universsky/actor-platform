//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/AppCounters.java
//

#ifndef _APAppCounters_H_
#define _APAppCounters_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;
@class JavaLangInteger;

@interface APAppCounters : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaLangInteger:(JavaLangInteger *)globalCounter;

- (JavaLangInteger *)getGlobalCounter;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APAppCounters)

FOUNDATION_EXPORT void APAppCounters_initWithJavaLangInteger_(APAppCounters *self, JavaLangInteger *globalCounter);

FOUNDATION_EXPORT APAppCounters *new_APAppCounters_initWithJavaLangInteger_(JavaLangInteger *globalCounter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APAppCounters_init(APAppCounters *self);

FOUNDATION_EXPORT APAppCounters *new_APAppCounters_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APAppCounters)

typedef APAppCounters ImActorModelApiAppCounters;

#endif // _APAppCounters_H_
