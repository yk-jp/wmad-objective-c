//
//  Dice.m
//  Lab6
//
//  Created by Yusuke K on 2022-09-07.
//

#import "Dice.h"

//⚀⚁⚂⚃⚄⚅
@implementation Dice {
    NSArray *NUMBER;
}

-(instancetype) init {
    self = [super init];
    if(self) {
        NUMBER = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    }
    
    return self;
}

-(void) setNumber {
    NSInteger rand = arc4random_uniform((int)[NUMBER count]);
    _number = NUMBER[rand];
}

@end
