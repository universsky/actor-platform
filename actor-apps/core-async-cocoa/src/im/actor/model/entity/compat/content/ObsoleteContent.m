//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/compat/content/ObsoleteContent.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceExContactRegistered.h"
#include "im/actor/model/api/ServiceExGroupCreated.h"
#include "im/actor/model/api/ServiceExUserLeft.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/entity/compat/content/ObsoleteContent.h"
#include "im/actor/model/entity/compat/content/ObsoleteDocument.h"
#include "im/actor/model/entity/compat/content/ObsoletePhoto.h"
#include "im/actor/model/entity/compat/content/ObsoleteService.h"
#include "im/actor/model/entity/compat/content/ObsoleteServiceAdded.h"
#include "im/actor/model/entity/compat/content/ObsoleteServiceAvatar.h"
#include "im/actor/model/entity/compat/content/ObsoleteServiceKicked.h"
#include "im/actor/model/entity/compat/content/ObsoleteServiceTitle.h"
#include "im/actor/model/entity/compat/content/ObsoleteText.h"
#include "im/actor/model/entity/compat/content/ObsoleteVideo.h"
#include "im/actor/model/entity/content/internal/AbsContentContainer.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"
#include "java/io/IOException.h"

#define ImActorModelEntityCompatContentObsoleteContent_TEXT 1
#define ImActorModelEntityCompatContentObsoleteContent_DOCUMENT 2
#define ImActorModelEntityCompatContentObsoleteContent_DOCUMENT_PHOTO 3
#define ImActorModelEntityCompatContentObsoleteContent_DOCUMENT_VIDEO 4
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE 5
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE_CREATED 6
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE_AVATAR 7
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE_TITLE 8
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE_ADDED 9
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE_KICKED 10
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE_LEAVE 11
#define ImActorModelEntityCompatContentObsoleteContent_SERVICE_REGISTERED 12

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, TEXT, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, DOCUMENT, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, DOCUMENT_PHOTO, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, DOCUMENT_VIDEO, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE_CREATED, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE_AVATAR, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE_TITLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE_ADDED, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE_KICKED, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE_LEAVE, jint)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelEntityCompatContentObsoleteContent, SERVICE_REGISTERED, jint)

@implementation ImActorModelEntityCompatContentObsoleteContent

+ (ImActorModelEntityContentInternalAbsContentContainer *)contentFromValuesWithBSBserValues:(BSBserValues *)values {
  return ImActorModelEntityCompatContentObsoleteContent_contentFromValuesWithBSBserValues_(values);
}

- (instancetype)init {
  ImActorModelEntityCompatContentObsoleteContent_init(self);
  return self;
}

@end

ImActorModelEntityContentInternalAbsContentContainer *ImActorModelEntityCompatContentObsoleteContent_contentFromValuesWithBSBserValues_(BSBserValues *values) {
  ImActorModelEntityCompatContentObsoleteContent_initialize();
  switch ([((BSBserValues *) nil_chk(values)) getIntWithInt:1]) {
    case ImActorModelEntityCompatContentObsoleteContent_TEXT:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_([new_ImActorModelEntityCompatContentObsoleteText_initWithBSBserValues_(values) toApiMessage]);
    case ImActorModelEntityCompatContentObsoleteContent_DOCUMENT:
    return [new_ImActorModelEntityCompatContentObsoleteDocument_initWithBSBserValues_(values) toContainer];
    case ImActorModelEntityCompatContentObsoleteContent_DOCUMENT_PHOTO:
    return [new_ImActorModelEntityCompatContentObsoletePhoto_initWithBSBserValues_(values) toContainer];
    case ImActorModelEntityCompatContentObsoleteContent_DOCUMENT_VIDEO:
    return [new_ImActorModelEntityCompatContentObsoleteVideo_initWithBSBserValues_(values) toContainer];
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_([new_ImActorModelEntityCompatContentObsoleteService_initWithBSBserValues_(values) toApiMessage]);
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE_REGISTERED:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APServiceMessage_initWithNSString_withAPServiceEx_(@"User registered", new_APServiceExContactRegistered_initWithInt_(0)));
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE_CREATED:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APServiceMessage_initWithNSString_withAPServiceEx_(@"Group created", new_APServiceExGroupCreated_init()));
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE_TITLE:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_([new_ImActorModelEntityCompatContentObsoleteServiceTitle_initWithBSBserValues_(values) toApiMessage]);
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE_AVATAR:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_([new_ImActorModelEntityCompatContentObsoleteServiceAvatar_initWithBSBserValues_(values) toApiMessage]);
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE_ADDED:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_([new_ImActorModelEntityCompatContentObsoleteServiceAdded_initWithBSBserValues_(values) toApiMessage]);
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE_KICKED:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_([new_ImActorModelEntityCompatContentObsoleteServiceKicked_initWithBSBserValues_(values) toApiMessage]);
    case ImActorModelEntityCompatContentObsoleteContent_SERVICE_LEAVE:
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APServiceMessage_initWithNSString_withAPServiceEx_(@"User leave", new_APServiceExUserLeft_init()));
    default:
    @throw new_JavaIoIOException_initWithNSString_(@"Unknown type");
  }
}

void ImActorModelEntityCompatContentObsoleteContent_init(ImActorModelEntityCompatContentObsoleteContent *self) {
  (void) NSObject_init(self);
}

ImActorModelEntityCompatContentObsoleteContent *new_ImActorModelEntityCompatContentObsoleteContent_init() {
  ImActorModelEntityCompatContentObsoleteContent *self = [ImActorModelEntityCompatContentObsoleteContent alloc];
  ImActorModelEntityCompatContentObsoleteContent_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityCompatContentObsoleteContent)
