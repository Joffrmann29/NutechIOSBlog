//
//  ViewController.h
//  NutechApp
//
//  Created by Nutech Systems on 5/1/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)blogBtn:(id)sender;
- (IBAction)tutorialBtn:(id)sender;
- (IBAction)contentBtn:(id)sender;
- (IBAction)aboutBtn:(id)sender;
- (IBAction)quizBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *blogButton;
@property (weak, nonatomic) IBOutlet UIButton *tutorialButton;
@property (weak, nonatomic) IBOutlet UIButton *contactButton;
@property (weak, nonatomic) IBOutlet UIButton *aboutButton;
@property (weak, nonatomic) IBOutlet UIButton *quizButton;

@end

