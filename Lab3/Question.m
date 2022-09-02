//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Yusuke K on 2022-09-01.
//

#import "Question.h"

@implementation Question {
    
}

-(instancetype) init {
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(100) + 10;
        _rightValue = arc4random_uniform(100) + 10;
        
//        _question = [NSString stringWithFormat:@"%ld + %ld ?", randInteger1, randInteger2];
//        _answer = randInteger1 + randInteger2;
        
        _startTime = [NSDate date];
    }
    
    return self;
}

-(NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    return (long) ceil([_endTime timeIntervalSinceDate: _startTime]);
}

-(void) generateQuestions {
    
}

@end
