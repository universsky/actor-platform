//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/raw/Nat512.java
//

#ifndef _OrgBouncycastleMathRawNat512_H_
#define _OrgBouncycastleMathRawNat512_H_

#include "J2ObjC_header.h"

@class IOSIntArray;

@interface OrgBouncycastleMathRawNat512 : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)mulWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)y
           withIntArray:(IOSIntArray *)zz;

+ (void)squareWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)zz;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathRawNat512)

FOUNDATION_EXPORT void OrgBouncycastleMathRawNat512_mulWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathRawNat512_squareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathRawNat512_init(OrgBouncycastleMathRawNat512 *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathRawNat512)

#endif // _OrgBouncycastleMathRawNat512_H_
