#import "CordovaTestExample.h"

#import <Cordova/CDVAvailability.h>

@implementation CordovaTestExample

- (void)pluginInitialize {
}

- (void)echo:(CDVInvokedUrlCommand *)command {
  NSString* phrase = [command.arguments objectAtIndex:0];
  NSLog(@"%@", phrase);

  CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:phrase];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
