#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>

@interface iOSUUID: CDVPlugin{
  NSString* callbackId;
}

@property (nonatomic, retain) NSString* callbackId;

- (void)iOSUUID:(CDVInvokedUrlCommand *)command;
@end
