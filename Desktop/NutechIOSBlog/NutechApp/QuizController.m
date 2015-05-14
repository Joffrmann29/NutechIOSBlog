//
//  QuizController.m
//  NutechApp
//
//  Created by Nutech Systems on 5/11/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import "QuizController.h"

@interface QuizController ()

@end

@implementation QuizController
/*
 - (void)viewDidLoad {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 
 self.questions = @[@"From what is cognac made?",
 @"What is 7+7?",
 @"What is the captical of Vermont?"];
 
 self.answers = @[@"Grapes",
 @"14",
 @"Montpelier"];
 }
 
 - (void)didReceiveMemoryWarning {
 [super didReceiveMemoryWarning];
 // Dispose of any resources that can be recreated.
 }
 
 - (IBAction)showQuestion:(id)sender {
 static int lastIndex = -1;
 
 do { self.currentQuestionIndex = arc4random() % 3; }
 while(lastIndex == self.currentQuestionIndex);
 
 lastIndex = self.currentQuestionIndex;
 
 self.questionLabel.text = self.questions[self.currentQuestionIndex];
 self.answerLabel.text = @"???";
 }
 
 - (IBAction)showAnswer:(id)sender {
 if (![self.questionLabel.text isEqualToString:@""])
 self.answerLabel.text = self.answers[self.currentQuestionIndex];
 }

 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self runQuizQuery];
    //_index = -1;
    [self setHiddenBools];
}
-(void)viewWillAppear:(BOOL)animated{
    
    self.navigationController.navigationBarHidden = NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)runQuizQuery
{
    PFQuery * quizQuery = [PFQuery queryWithClassName:@"QuizItem"];
    [quizQuery findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
     {
         if(!error){
             _quizItems = objects;
             NSLog(@"%@", _quizItems);
         }else{
             NSLog(@"%@", error);
         }
     }
     ];
    
    
}


-(void)setHiddenBools{
    _answerLabel.hidden = YES;
    _explanationTextView.hidden = YES;
}


-(IBAction)showNextItem:(id)sender{
    _index++;
    
    if(_index == _quizItems.count){
        _index = 0;
    }
    
    PFObject *quizPbject = _quizItems[_index];
    self.questionLabel.text = quizPbject[@"Question"];
    self.answerLabel.text = quizPbject[@"CorrectAnswer"];
    self.explanationTextView.text = quizPbject[@"Explanation"];
    [self setHiddenBools];
}

- (IBAction)showAnswer:(id)sender {
    _explanationTextView.hidden = NO;
    _answerLabel.hidden =NO;
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
