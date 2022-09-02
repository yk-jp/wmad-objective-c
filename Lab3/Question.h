//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Yusuke K on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property NSInteger rightValue;
@property NSInteger leftValue;

@property NSString *question;
@property (nonatomic) NSInteger answer;

@property NSDate *startTime;
@property NSDate *endTime;

-(NSTimeInterval)answerTime;
- (void)generateQuestion;

@end

NS_ASSUME_NONNULL_END
