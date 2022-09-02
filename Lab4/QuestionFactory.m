//
//  QuestionFactory.m
//  Lab4
//
//  Created by Yusuke K on 2022-09-01.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory{
    NSArray *questionSubclassNames;
}

-(instancetype) init {
    self = [super init];
    if (self) {
        questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion"];
    }
    
    return self;
}

-(Question*) generateRandomQuestion {
    NSInteger rand = arc4random_uniform((int)[questionSubclassNames count]);
    NSString *className = questionSubclassNames[rand];
   
    return  [[NSClassFromString(className) alloc] init];
}


@end
