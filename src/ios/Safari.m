/********* Echo.m Cordova Plugin Implementation *******/

#import <UIKit/UIKit.h>
#import "Safari.h"
#import <Cordova/CDV.h>

@implementation Safari

- (void)openExternally:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    // --------------------------------------------------------------------------------------------

    NSString *str = [command.arguments objectAtIndex:0];
    NSURL *url = [[NSURL alloc] initWithString:str];
    [[UIApplication sharedApplication] openURL:url];
    
    // --------------------------------------------------------------------------------------------

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end