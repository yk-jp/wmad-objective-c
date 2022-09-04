//
//  QuestionManager.m
//  Lab4
//
//  Created by Yusuke K on 2022-09-01.
//

#import "QuestionManager.h"

@implementation QuestionManager {
    
}

-(instancetype) init {
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(NSString*) timeOutput {
   NSTimeInterval total = 0;
   
   for(int i = 0; i < [_questions count]; i++) {
        NSTimeInterval time = [[_questions objectAtIndex: i] answerTime];
        total += time;
   }
    
   return [NSString stringWithFormat:@"total time: %fs, avarage time: %fs", total , total/[_questions count]];
}

@end
