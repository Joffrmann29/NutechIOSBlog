//
//  QuizController.h
//  NutechApp
//
//  Created by Nutech Systems on 5/11/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse.h>
@interface QuizController : UIViewController

@property (strong, nonatomic) NSArray* quizItems;
@property (nonatomic) NSUInteger index;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UITextView *explanationTextView;

- (IBAction)showNextItem:(id)sender;

- (IBAction)showAnswer:(id)sender;


@end
