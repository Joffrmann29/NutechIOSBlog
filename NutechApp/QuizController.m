//
//  QuizController.m
//  NutechApp
//
//  Created by Nutech Systems on 5/11/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import "QuizController.h"
#import "SettingsVC.h"
@interface QuizController ()

@end

@implementation QuizController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //NSDictionary* defaults= @{@"enabled_answer": @YES};

    [self runQuizQuery];
    _index = -1;
}

-(void)viewWillAppear:(BOOL)animated
{
    NSUserDefaults* userDefaults =[ NSUserDefaults standardUserDefaults];
    
    _answerEnabled = [userDefaults boolForKey:@"enabled_answer"];
    
    if(_answerEnabled == YES)
    {
        _explanationLabel.hidden = NO;
        _answerLabel.hidden = NO;
    }
    
    else
    {
        _explanationLabel.hidden = YES;
        _answerLabel.hidden = YES;
    }
    
    self.navigationController.navigationBarHidden = NO;
}


/*-(void)settings:(id) sender {
    SettingsVC* svc = [[SettingsVC alloc] init];
    [self presentViewController:svc animated:YES completion:nil];
}*/

-(void)runQuizQuery
{
    PFQuery *quizQuery = [PFQuery queryWithClassName:@"QuizItem"];
    
    
    [quizQuery findObjectsInBackgroundWithBlock: ^(NSArray *objects, NSError *error) {
        
        if (!error) {
            _quizItems = objects;
            NSLog(@"%@", _quizItems);
            
        }
        else {
            NSLog(@"%@", error);
            
        }
    }];
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

//-(void)showHidden {
//    
//    _answerLabel.hidden = YES;
//    _explanationLabel.hidden=YES;
//    
//}

- (IBAction)showtheAnswer:(id)sender {
    
    _index++;
    if (_index ==_quizItems.count){
        _index = 0;
    }
    
    
    PFObject* quizObject = _quizItems[_index];
    
    self.questionLable.text = quizObject[@"Question"];
    self.answerLabel.text = quizObject [@"CorrectAnswer"];
    self.explanationLabel.text = quizObject [@"Explanation"];
}




- (IBAction)showAnswer:(id)sender {
    _explanationLabel.hidden=NO;
    _answerLabel.hidden=NO;
}
@end
