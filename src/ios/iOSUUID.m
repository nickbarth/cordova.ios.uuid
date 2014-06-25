#import "iOSUUID.h"

@implementation iOSUUID

@synthesize callbackId;

- (void)iOSParseLogin:(CDVInvokedUrlCommand *)command {
    self.callbackId = command.callbackId;

    NSString *uuid = [UIDevice currentDevice].identifierForVendor.UUIDString;
    NSLog(uuid);

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:uuid];
    NSString* javaScript = [pluginResult toSuccessCallbackString:self.callbackId];
    [self writeJavascript:javaScript];
}

@end
