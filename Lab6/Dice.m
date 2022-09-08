//
//  Dice.m
//  Lab6
//
//  Created by Yusuke K on 2022-09-07.
//

#import "Dice.h"

//⚀⚁⚂⚃⚄⚅
@implementation Dice {
    NSArray *_NUMBER;
}

-(instancetype) init {
    self = [super init];
    if(self) {
        _NUMBER = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
        _dval = @"";
        _dNum = -1;
    }
    
    return self;
}

-(void) setRandomNumber {
    NSInteger rand = arc4random_uniform((int)[_NUMBER count]);
    _dval = _NUMBER[rand];
    _dNum = rand + 1;
}

-(NSArray*) getNUMBER {
    return _NUMBER;
}

@end
