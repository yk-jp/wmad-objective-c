//
//  SubtractionQuestion.m
//  Lab4
//
//  Created by Yusuke K on 2022-09-01.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

-(instancetype) init {
    if (self) {
       [self generateQuestion];
    }
    
    return self;
}

- (void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld - %ld ?",super.leftValue, super.rightValue];
    super.answer = super.leftValue - super.rightValue;
}

@end
