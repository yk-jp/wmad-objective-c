//
//  AdditionQuestion.m
//  Lab4
//
//  Created by Yusuke K on 2022-09-01.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
    
-(instancetype) init {
    if (self = [super init]) {
       [self generateQuestion];
    }
    
    return self;
}

- (void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld + %ld ?",super.leftValue, super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}
@end
