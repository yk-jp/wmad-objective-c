//
//  main.m
//  Lab3
//
//  Created by Yusuke K on 2022-09-01.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        NSLog(@"MATHS!\n");
        while(gameOn) {
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            
            NSLog(@"%@\n", [additionQuestion question]);
            NSString *userInput = [InputHandler getUserInput];
            
            if([userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            NSInteger userAnswer = [userInput intValue];
            
            if (userAnswer == [additionQuestion answer]) {
                NSLog(@"Right!");
                [scoreKeeper setRight:[scoreKeeper right] + 1];
            } else {
                NSLog(@"Wrong!");
                [scoreKeeper setWrong:[scoreKeeper wrong] + 1];
            }
            
            NSLog(@"score: %ld right %ld, wrong %ld, ratio: %ld", [scoreKeeper culcTotalRound] , [scoreKeeper right], [scoreKeeper wrong], 100 * [scoreKeeper right] / [scoreKeeper culcTotalRound]);
        }
    }
    
    return 0;
}
