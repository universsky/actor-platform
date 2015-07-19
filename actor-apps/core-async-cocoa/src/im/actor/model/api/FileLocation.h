//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/FileLocation.java
//

#ifndef _APFileLocation_H_
#define _APFileLocation_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;

@interface APFileLocation : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)fileId
                    withLong:(jlong)accessHash;

- (jlong)getAccessHash;

- (jlong)getFileId;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APFileLocation)

FOUNDATION_EXPORT void APFileLocation_initWithLong_withLong_(APFileLocation *self, jlong fileId, jlong accessHash);

FOUNDATION_EXPORT APFileLocation *new_APFileLocation_initWithLong_withLong_(jlong fileId, jlong accessHash) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APFileLocation_init(APFileLocation *self);

FOUNDATION_EXPORT APFileLocation *new_APFileLocation_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APFileLocation)

typedef APFileLocation ImActorModelApiFileLocation;

#endif // _APFileLocation_H_
