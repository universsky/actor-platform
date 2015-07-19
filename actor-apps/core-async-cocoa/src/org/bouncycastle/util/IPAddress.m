//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/util/IPAddress.java
//


#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "org/bouncycastle/util/IPAddress.h"

@interface OrgBouncycastleUtilIPAddress ()

+ (jboolean)isMaskValueWithNSString:(NSString *)component
                            withInt:(jint)size;

@end

__attribute__((unused)) static jboolean OrgBouncycastleUtilIPAddress_isMaskValueWithNSString_withInt_(NSString *component, jint size);

@implementation OrgBouncycastleUtilIPAddress

+ (jboolean)isValidWithNSString:(NSString *)address {
  return OrgBouncycastleUtilIPAddress_isValidWithNSString_(address);
}

+ (jboolean)isValidWithNetMaskWithNSString:(NSString *)address {
  return OrgBouncycastleUtilIPAddress_isValidWithNetMaskWithNSString_(address);
}

+ (jboolean)isValidIPv4WithNSString:(NSString *)address {
  return OrgBouncycastleUtilIPAddress_isValidIPv4WithNSString_(address);
}

+ (jboolean)isValidIPv4WithNetmaskWithNSString:(NSString *)address {
  return OrgBouncycastleUtilIPAddress_isValidIPv4WithNetmaskWithNSString_(address);
}

+ (jboolean)isValidIPv6WithNetmaskWithNSString:(NSString *)address {
  return OrgBouncycastleUtilIPAddress_isValidIPv6WithNetmaskWithNSString_(address);
}

+ (jboolean)isMaskValueWithNSString:(NSString *)component
                            withInt:(jint)size {
  return OrgBouncycastleUtilIPAddress_isMaskValueWithNSString_withInt_(component, size);
}

+ (jboolean)isValidIPv6WithNSString:(NSString *)address {
  return OrgBouncycastleUtilIPAddress_isValidIPv6WithNSString_(address);
}

- (instancetype)init {
  OrgBouncycastleUtilIPAddress_init(self);
  return self;
}

@end

jboolean OrgBouncycastleUtilIPAddress_isValidWithNSString_(NSString *address) {
  OrgBouncycastleUtilIPAddress_initialize();
  return OrgBouncycastleUtilIPAddress_isValidIPv4WithNSString_(address) || OrgBouncycastleUtilIPAddress_isValidIPv6WithNSString_(address);
}

jboolean OrgBouncycastleUtilIPAddress_isValidWithNetMaskWithNSString_(NSString *address) {
  OrgBouncycastleUtilIPAddress_initialize();
  return OrgBouncycastleUtilIPAddress_isValidIPv4WithNetmaskWithNSString_(address) || OrgBouncycastleUtilIPAddress_isValidIPv6WithNetmaskWithNSString_(address);
}

jboolean OrgBouncycastleUtilIPAddress_isValidIPv4WithNSString_(NSString *address) {
  OrgBouncycastleUtilIPAddress_initialize();
  if (((jint) [((NSString *) nil_chk(address)) length]) == 0) {
    return NO;
  }
  jint octet;
  jint octets = 0;
  NSString *temp = JreStrcat("$C", address, '.');
  jint pos;
  jint start = 0;
  while (start < ((jint) [temp length]) && (pos = [temp indexOf:'.' fromIndex:start]) > start) {
    if (octets == 4) {
      return NO;
    }
    @try {
      octet = JavaLangInteger_parseIntWithNSString_([temp substring:start endIndex:pos]);
    }
    @catch (JavaLangNumberFormatException *ex) {
      return NO;
    }
    if (octet < 0 || octet > 255) {
      return NO;
    }
    start = pos + 1;
    octets++;
  }
  return octets == 4;
}

jboolean OrgBouncycastleUtilIPAddress_isValidIPv4WithNetmaskWithNSString_(NSString *address) {
  OrgBouncycastleUtilIPAddress_initialize();
  jint index = [((NSString *) nil_chk(address)) indexOfString:@"/"];
  NSString *mask = [address substring:index + 1];
  return (index > 0) && OrgBouncycastleUtilIPAddress_isValidIPv4WithNSString_([address substring:0 endIndex:index]) && (OrgBouncycastleUtilIPAddress_isValidIPv4WithNSString_(mask) || OrgBouncycastleUtilIPAddress_isMaskValueWithNSString_withInt_(mask, 32));
}

jboolean OrgBouncycastleUtilIPAddress_isValidIPv6WithNetmaskWithNSString_(NSString *address) {
  OrgBouncycastleUtilIPAddress_initialize();
  jint index = [((NSString *) nil_chk(address)) indexOfString:@"/"];
  NSString *mask = [address substring:index + 1];
  return (index > 0) && (OrgBouncycastleUtilIPAddress_isValidIPv6WithNSString_([address substring:0 endIndex:index]) && (OrgBouncycastleUtilIPAddress_isValidIPv6WithNSString_(mask) || OrgBouncycastleUtilIPAddress_isMaskValueWithNSString_withInt_(mask, 128)));
}

jboolean OrgBouncycastleUtilIPAddress_isMaskValueWithNSString_withInt_(NSString *component, jint size) {
  OrgBouncycastleUtilIPAddress_initialize();
  @try {
    jint value = JavaLangInteger_parseIntWithNSString_(component);
    return value >= 0 && value <= size;
  }
  @catch (JavaLangNumberFormatException *e) {
    return NO;
  }
}

jboolean OrgBouncycastleUtilIPAddress_isValidIPv6WithNSString_(NSString *address) {
  OrgBouncycastleUtilIPAddress_initialize();
  if (((jint) [((NSString *) nil_chk(address)) length]) == 0) {
    return NO;
  }
  jint octet;
  jint octets = 0;
  NSString *temp = JreStrcat("$C", address, ':');
  jboolean doubleColonFound = NO;
  jint pos;
  jint start = 0;
  while (start < ((jint) [temp length]) && (pos = [temp indexOf:':' fromIndex:start]) >= start) {
    if (octets == 8) {
      return NO;
    }
    if (start != pos) {
      NSString *value = [temp substring:start endIndex:pos];
      if (pos == (((jint) [temp length]) - 1) && [((NSString *) nil_chk(value)) indexOf:'.'] > 0) {
        if (!OrgBouncycastleUtilIPAddress_isValidIPv4WithNSString_(value)) {
          return NO;
        }
        octets++;
      }
      else {
        @try {
          octet = JavaLangInteger_parseIntWithNSString_withInt_([temp substring:start endIndex:pos], 16);
        }
        @catch (JavaLangNumberFormatException *ex) {
          return NO;
        }
        if (octet < 0 || octet > (jint) 0xffff) {
          return NO;
        }
      }
    }
    else {
      if (pos != 1 && pos != ((jint) [temp length]) - 1 && doubleColonFound) {
        return NO;
      }
      doubleColonFound = YES;
    }
    start = pos + 1;
    octets++;
  }
  return octets == 8 || doubleColonFound;
}

void OrgBouncycastleUtilIPAddress_init(OrgBouncycastleUtilIPAddress *self) {
  (void) NSObject_init(self);
}

OrgBouncycastleUtilIPAddress *new_OrgBouncycastleUtilIPAddress_init() {
  OrgBouncycastleUtilIPAddress *self = [OrgBouncycastleUtilIPAddress alloc];
  OrgBouncycastleUtilIPAddress_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleUtilIPAddress)
