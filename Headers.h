/* Detect Pebble connection from BluetoothManager */
@interface BluetoothManager
+(id)sharedInstance;
-(void)_connectedStatusChanged;
-(NSArray *)connectedDevices;
@end

@interface BBAction : NSObject
+ (instancetype)actionWithLaunchBundleID:(NSString *)bundleID callblock:(id)block;
+ (instancetype)actionWithLaunchURL:(NSURL *)url callblock:(id)block;
@property (nonatomic, retain) NSString *bundleID;
@end

@interface BBBulletin : NSObject
@property (nonatomic, retain) NSString *bulletinID;
@property (nonatomic, retain) NSString *sectionID;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *subtitle;
@property (nonatomic, retain) NSString *message;
@property (nonatomic, retain) BBAction *defaultAction;
@end