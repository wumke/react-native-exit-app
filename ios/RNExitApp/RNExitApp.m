#import <UIKit/UIKit.h>
#import <React/RCTBridgeModule.h>


@interface RNExitApp : NSObject <RCTBridgeModule>
@end

@implementation RNExitApp

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(exitApp)
{
    exit(0);
};

@end
