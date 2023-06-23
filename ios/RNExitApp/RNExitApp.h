#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#elif __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import "React/RCTBridgeModule.h"
#endif

#if RCT_NEW_ARCH_ENABLED
#import <React-Codegen/RNExitAppSpec/RNExitAppSpec.h>
#endif

@interface RNExitApp : NSObject <RCTBridgeModule>
@end

#if RCT_NEW_ARCH_ENABLED
@interface RNExitApp () <NativeRNExitAppSpec>
@end
#endif
