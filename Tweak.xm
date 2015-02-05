#import "Headers.h"
#import <BulletinBoard/BBBulletin.h>
#include <Springboard/SBBulletinBannerController.h>

%hook BluetoothManager
-(void)_connectedStatusChanged{
    BOOL pebble = NO;
    for (id device in [self connectedDevices]){
        if([[device name] rangeOfString:@"Pebble"].location != NSNotFound){
            pebble = YES;
            NSLog(@"BATMAN");
            NSString *deviceName = [device name];
            if(pebble == YES && deviceName.length == 6){
                    //property length not found on object of type 'id'
                BBBulletin *bulletin = [[BBBulletin alloc] init];
                bulletin.bulletinID = @"com.getpebble.ios";
                bulletin.sectionID = @"com.getpebble.ios";
                bulletin.title = @"Pebble";
                bulletin.message = @"Now connected to Pebble";
                [(SBBulletinBannerController *)[%c(SBBulletinBannerController) sharedInstance] observer:nil addBulletin:bulletin forFeed:1];
                [bulletin release];
                break;
            }
        }
    }
}
%end
