// #import <React/RCTViewManager.h>

// @interface RCT_EXTERN_MODULE(SampleAccellorModuleViewManager, RCTViewManager)

// RCT_EXPORT_VIEW_PROPERTY(color, NSString)

// @end


#import <React/RCTViewManager.h>

@interface

RCT_EXTERN_MODULE(SampleAccellorModuleViewManager, RCTViewManager)

RCT_EXTERN_METHOD(showScreen: (NSString)token)

@end
