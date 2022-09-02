//
//  QuestionManager.h
//  Lab4
//
//  Created by Yusuke K on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

-(NSString*) timeOutput;

@end

NS_ASSUME_NONNULL_END
