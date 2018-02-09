#import <Cordova/CDVPlugin.h>

@interface CordovaTestExample : CDVPlugin {
}

- (void)echo:(CDVInvokedUrlCommand *)command;

@end