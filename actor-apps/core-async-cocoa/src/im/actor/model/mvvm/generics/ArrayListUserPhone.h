//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/mvvm/generics/ArrayListUserPhone.java
//

#ifndef _AMArrayListUserPhone_H_
#define _AMArrayListUserPhone_H_

#include "J2ObjC_header.h"
#include "java/util/ArrayList.h"

@class AMUserPhone;
@protocol JavaUtilCollection;

@interface AMArrayListUserPhone : JavaUtilArrayList

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (instancetype)initWithInt:(jint)initialCapacity;

- (AMUserPhone *)getWithInt:(jint)index;

- (jboolean)isEmpty;

- (jint)size;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(AMArrayListUserPhone)

FOUNDATION_EXPORT void AMArrayListUserPhone_initWithInt_(AMArrayListUserPhone *self, jint initialCapacity);

FOUNDATION_EXPORT AMArrayListUserPhone *new_AMArrayListUserPhone_initWithInt_(jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMArrayListUserPhone_init(AMArrayListUserPhone *self);

FOUNDATION_EXPORT AMArrayListUserPhone *new_AMArrayListUserPhone_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMArrayListUserPhone_initWithJavaUtilCollection_(AMArrayListUserPhone *self, id<JavaUtilCollection> c);

FOUNDATION_EXPORT AMArrayListUserPhone *new_AMArrayListUserPhone_initWithJavaUtilCollection_(id<JavaUtilCollection> c) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMArrayListUserPhone)

typedef AMArrayListUserPhone ImActorModelMvvmGenericsArrayListUserPhone;

#endif // _AMArrayListUserPhone_H_
