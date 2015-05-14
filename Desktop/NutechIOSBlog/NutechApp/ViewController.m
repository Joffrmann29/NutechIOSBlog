//
//  ViewController.m
//  NutechApp
//
//  Created by Nutech Systems on 5/1/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _blogButton.layer.cornerRadius = 10;
    [_blogButton setClipsToBounds:YES];
    
    _contactButton.layer.cornerRadius = 10;
    [_contactButton setClipsToBounds:YES];
    
    _aboutButton.layer.cornerRadius = 10;
    [_aboutButton setClipsToBounds:YES];
    
    _tutorialButton.layer.cornerRadius = 10;
    [_tutorialButton setClipsToBounds:YES];
    
    _quizButton.layer.cornerRadius = 10;
    [_quizButton setClipsToBounds:YES];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
}
-(void)viewDidAppear:(BOOL)animated{
    

}
-(void)awakeFromNib{

    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBarHidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)blogBtn:(id)sender {
}

- (IBAction)tutorialBtn:(id)sender {
}

- (IBAction)contentBtn:(id)sender {
}

- (IBAction)aboutBtn:(id)sender {
}

- (IBAction)quizBtn:(id)sender {
}
@end
