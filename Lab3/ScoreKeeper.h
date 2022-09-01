//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Yusuke K on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

- (NSInteger) culcTotalRound;

@end

NS_ASSUME_NONNULL_END
