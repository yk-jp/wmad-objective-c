//
//  QuestionFactory.h
//  Lab4
//
//  Created by Yusuke K on 2022-09-01.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

-(Question*) generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
