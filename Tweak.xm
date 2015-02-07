#import "Headers.h"
#include <Springboard/SBBulletinBannerController.h>
#import <BluetoothManager/BluetoothDevice.h>

%hook BluetoothManager
-(void)_connectedStatusChanged{
    BOOL pebble = NO;
    for (id device in [self connectedDevices]){
        if([[device name] rangeOfString:@"Pebble"].location != NSNotFound){
            NSString *print = [NSString stringWithFormat:@"Now connected to %@", [device name], nil];
            pebble = YES;
            
            if([device name].length == 14 && pebble == YES){
                BBBulletin *bulletin = [[BBBulletin alloc] init];
                bulletin.bulletinID = @"com.getpebble.ios";
                bulletin.sectionID = @"com.getpebble.ios";
                bulletin.defaultAction = [BBAction actionWithLaunchBundleID:bulletin.sectionID];
                bulletin.title = @"Pebble";
                bulletin.message = print;
                [(SBBulletinBannerController *)[%c(SBBulletinBannerController) sharedInstance] observer:nil addBulletin:bulletin forFeed:2];
                [bulletin release];
                break;
            }
        }
    }
}
%end
