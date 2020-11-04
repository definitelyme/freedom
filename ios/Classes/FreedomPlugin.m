#import "FreedomPlugin.h"
#if __has_include(<freedom/freedom-Swift.h>)
#import <freedom/freedom-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "freedom-Swift.h"
#endif

@implementation FreedomPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFreedomPlugin registerWithRegistrar:registrar];
}
@end
