//
//  QuizController.h
//  NutechApp
//
//  Created by Nutech Systems on 5/11/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface QuizController : UIViewController
- (IBAction)questionBtn:(id)sender;
- (IBAction)answerBtn:(id)sender;


@property (weak, nonatomic) IBOutlet UITextView *questionTextView;
@property (weak, nonatomic) IBOutlet UITextView *answerTextView;
@property (weak, nonatomic) IBOutlet UITextView *explanationTextView;
@property (strong,nonatomic)PFObject *quizObject;
@property(strong,nonatomic)NSArray *quizItems;
@property(nonatomic)int index;
@end
/*
 #import "QuizController.h"
 
 @interface QuizController ()
 
 @property (strong, nonatomic) IBOutlet UILabel *questionLabel;
 @property (strong, nonatomic) IBOutlet UILabel *answerLabel;
 @property (strong, nonatomic) IBOutlet UILabel *explanationLabel;
 @property (strong, nonatomic) PFObject *quizObject;
 @end
 
 @implementation QuizController

 
 */