//
//  SettingsVCViewController.m
//  NutechApp
//
//  Created by Fiseha on 5/13/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import "SettingsVC.h"

@interface SettingsVC ()

@end

@implementation SettingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    
    //get the flag state
    BOOL flagState = [defaults boolForKey:@"enabled_answer"];
    if (flagState){
        [_flagSwitch setOn:YES animated:YES];
    }else {
        [_flagSwitch setOn:NO animated:YES];
    }
}


- (IBAction)done:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)changeflagState:(id)sender {
    
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    BOOL flagEnabled = [_flagSwitch isOn];
    
    [defaults setBool:flagEnabled forKey:@"enabled_answer"];
    
    //synchronize user defaults
    [defaults synchronize];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
