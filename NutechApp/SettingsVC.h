//
//  SettingsVCViewController.h
//  NutechApp
//
//  Created by Fiseha on 5/13/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsVC : UIViewController

@property (strong, nonatomic) IBOutlet UISwitch *flagSwitch;
- (IBAction)done:(id)sender;

- (IBAction)changeflagState:(id)sender;
@end
