#import "NstackSdkPlugin.h"
#if __has_include(<nstack_sdk/nstack_sdk-Swift.h>)
#import <nstack_sdk/nstack_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nstack_sdk-Swift.h"
#endif

@implementation NstackSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNstackSdkPlugin registerWithRegistrar:registrar];
}
@end
