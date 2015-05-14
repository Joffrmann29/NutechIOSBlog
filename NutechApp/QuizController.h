//
//  QuizController.h
//  NutechApp
//
//  Created by Nutech Systems on 5/11/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Question.h"
#import <Parse/Parse.h>

@interface QuizController : UIViewController

@property (nonatomic, strong)NSArray* quizItems;
@property (nonatomic)NSUInteger index;
- (IBAction)showtheAnswer:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *questionLable;

@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *explanationLabel;
@property(assign, nonatomic)BOOL flagsEnabled;

@property (nonatomic) BOOL answerEnabled;
@end
