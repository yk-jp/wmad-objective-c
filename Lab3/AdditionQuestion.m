//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Yusuke K on 2022-09-01.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion {
    
}

-(instancetype) init {
    self = [super init];
    if (self) {
        NSInteger randInteger1 = arc4random_uniform(100) + 10;
        NSInteger randInteger2 = arc4random_uniform(100) + 10;
        
        _question = [NSString stringWithFormat:@"%ld + %ld ?", randInteger1, randInteger2];
        _answer = randInteger1 + randInteger2;
    }
    
    return self;
}


@end
