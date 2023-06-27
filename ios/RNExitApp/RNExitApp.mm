#import <UIKit/UIKit.h>

#import "RNExitApp.h"

#if RCT_NEW_ARCH_ENABLED
#import <RNExitAppSpec/RNExitAppSpec.h>
#endif

@implementation RNExitApp

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(exitApp)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[UIApplication sharedApplication] performSelector:@selector(suspend)];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            exit(0);
        });
    });
};

# pragma mark - New Architecture

#if RCT_NEW_ARCH_ENABLED

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeRNExitAppSpecJSI>(params);
}

#endif

@end
