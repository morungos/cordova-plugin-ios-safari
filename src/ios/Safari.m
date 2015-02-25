/********* Echo.m Cordova Plugin Implementation *******/

#import "Safari.h"

#import <UIKit/UIKit.h>
#import <Cordova/CDV.h>

@implementation Safari

- (void)openExternally:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    // --------------------------------------------------------------------------------------------

    NSString *str = [command.arguments objectAtIndex:0];
    NSURL *url = [[NSURL alloc] initWithString:str];
    [[UIApplication sharedApplication] openURL:url];    
    
    // --------------------------------------------------------------------------------------------

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end