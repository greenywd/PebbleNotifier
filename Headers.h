/* Detect Pebble connection from BluetoothManager */
@interface BluetoothManager
+(id)sharedInstance;
-(void)_connectedStatusChanged;
-(NSArray *)connectedDevices;
@end