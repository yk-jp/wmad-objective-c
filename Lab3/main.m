//
//  main.m
//  Lab3
//
//  Created by Yusuke K on 2022-09-01.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        NSLog(@"MATHS!\n");
        while(gameOn) {
            Question *question = [questionFactory generateRandomQuestion];
            [[questionManager questions] addObject:question];
            
            NSLog(@"%@\n", [question question]);
            NSString *userInput = [InputHandler getUserInput];
            
            if([userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            NSInteger userAnswer = [userInput intValue];
            
            if (userAnswer == [question answer]) {
                NSLog(@"Right!");
                [scoreKeeper setRight:[scoreKeeper right] + 1];
            } else {
                NSLog(@"Wrong!");
                [scoreKeeper setWrong:[scoreKeeper wrong] + 1];
            }
            
            NSLog(@"score: %ld right %ld, wrong %ld, ratio: %ld", [scoreKeeper culcTotalRound] , [scoreKeeper right], [scoreKeeper wrong], 100 * [scoreKeeper right] / [scoreKeeper culcTotalRound]);
            NSLog(@"%@",[questionManager timeOutput]);
        }
    }
    
    return 0;
}
