//
//  main.m
//  Lab6
//
//  Created by Yusuke K on 2022-09-07.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        
        NSMutableArray *dices = [NSMutableArray arrayWithObjects:dice1,dice2,dice3,dice4,dice5, nil];
        
        BOOL isProcessing = YES;
        
        while(isProcessing) {
            NSString *userInput = [inputCollector inputForPrompt:@"\n'roll' to roll the dice?\n'hold' to hold a dice\n'reset' to un-hold all dice'\n'done' to end the game\n'display' to show current stats"];
            
            if([userInput isEqualToString:@"done"]) {
                isProcessing = NO;
                continue;
            }
            
            
            if([userInput isEqualToString:@"roll"]) {
                
                for(int i = 0; i < [dices count]; i++) {
                    [[dices objectAtIndex: i] setNumber];
                    NSLog(@"%@",[[dices objectAtIndex: i] getNumber]);
                }
                
                
                continue;
            }
            
            
            
            
        }
    }
    return 0;
}
