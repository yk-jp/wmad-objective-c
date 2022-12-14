//
//  GameController.m
//  Lab6
//
//  Created by Yusuke K on 2022-09-07.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController {
    
}

-(instancetype) initWithDices: (NSMutableArray*) dices {
    self = [super init];
    if(self) {
        _dices = dices;
        _heldDices = [NSMutableDictionary new];
    }
    
    return self;
}

-(void) holdDice: (NSInteger) idx {
    idx = idx-1;
    Dice *updateDice = _dices[idx];
    
    NSString *key = [@(idx) stringValue];
    
    if(![_heldDices objectForKey:key]) {
        Dice *heldDice = [Dice new];
        NSString *heldNumber = [[NSString alloc] initWithFormat:@"[%@]", [updateDice dval]];
        [heldDice setDval: heldNumber];
        _heldDices[key] = heldDice;
    }
    
    Dice *tmp = _heldDices[key];
    _heldDices[key] = updateDice;
    _dices[idx] = tmp;
}

-(void) resetDice {
    _heldDices = [NSMutableDictionary new];
    
    for(int i = 0; i < [_dices count]; i++) {
        NSString *number = [_dices[i] dval];
        
        if([number length] > 1) {
            unichar c = (unichar)[number characterAtIndex:1];
            number = [NSString stringWithCharacters:&c length:1];
        }
        
        [_dices[i] setDval: number];
    }
}

-(NSInteger) culcTotalOfHeldDices {
    NSInteger total = 0;
    
    for (NSString* key in _heldDices){
        Dice *currDice =  _heldDices[key];
        total += [currDice dNum];
    }
    return total;
}

-(NSString *) displayDiceStatus {
    NSString *data = @"";
    for(int i = 0; i < [_dices count]; i++) {
        data = [data stringByAppendingString:@" "];
        data = [data stringByAppendingString:[_dices[i] dval]];
    }
    
    return data;
}

-(void) displayStatus {
    NSLog(@"----------------------");
    NSLog(@"--   Current Dice   --");
    NSLog(@"%@",self.displayDiceStatus);
    NSLog(@"--    Total Score   --");
    NSLog(@"Score %ld", self.culcTotalOfHeldDices);
    NSLog(@"----------------------");
}

@end
