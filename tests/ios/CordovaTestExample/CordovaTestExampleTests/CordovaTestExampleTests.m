//
//  CordovaTestExampleTests.m
//  CordovaTestExampleTests
//
//  Created by Evan Tobin on 2/8/18.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import <Cordova/CDVInvokedUrlCommand.h>
#import <Cordova/CDVCommandDelegateImpl.h>
#import "CordovaTestExample.h"

@interface CordovaTestExampleTests : XCTestCase

@end

@implementation CordovaTestExampleTests

- (void)testExample {
    CordovaTestExample *plugin = [[CordovaTestExample alloc] init];
    id commandDelegate = OCMClassMock([CDVCommandDelegateImpl class]);
    plugin.commandDelegate = commandDelegate;
    
    NSString *str = @"test";
    CDVInvokedUrlCommand *command = [[CDVInvokedUrlCommand alloc] initWithArguments:@[str] callbackId:nil className:NSStringFromClass([CordovaTestExample class]) methodName:NSStringFromSelector(@selector(echo:))];
    [plugin echo:command];
    
    OCMVerify([commandDelegate sendPluginResult:[OCMArg any] callbackId:[OCMArg any]]);
}


@end
