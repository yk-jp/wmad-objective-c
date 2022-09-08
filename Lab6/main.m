//
//  main.m
//  Lab6
//
//  Created by Yusuke K on 2022-09-07.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        NSMutableArray *dices = [NSMutableArray arrayWithObjects:dice1,dice2,dice3,dice4,dice5, nil];
        
        GameController *gameC = [[GameController alloc] initWithDices:dices];
        
        BOOL isProcessing = YES;
        
        while(isProcessing) {
            NSString *userInput = [inputCollector inputForPrompt:@"\n'roll' to roll the dice?\n'hold' to hold a dice\n'reset' to un-hold all dice'\n'done' to end the game\n'display' to show current stats"];
            
            if([userInput isEqualToString:@"done"]) {
                isProcessing = NO;
                [gameC displayStatus];
                continue;
            } else if([userInput isEqualToString:@"roll"]) {
                for(int i = 0; i < [[gameC dices] count]; i++) {
                    [[[gameC dices] objectAtIndex: i] setRandomNumber];
                }
                
                [gameC displayStatus];
                continue;
            } else if([userInput isEqualToString:@"hold"]) {
                userInput = [inputCollector inputForPrompt:@"\nEnter the number of the dice:"];
                [gameC holdDice: [userInput intValue]];
                [gameC displayStatus];
                continue;
            } else if([userInput isEqualToString:@"reset"]) {
                [gameC resetDice];
                [gameC displayStatus];
                continue;
            }  else if([userInput isEqualToString:@"display"]) {
                [gameC displayStatus];
                continue;
            }
            
            continue;
        }
    }
    return 0;
}
