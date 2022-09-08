//
//  Dice.h
//  Lab6
//
//  Created by Yusuke K on 2022-09-07.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property NSString *dval;
@property NSInteger dNum;

-(void) setRandomNumber;
-(NSArray*) getNUMBER;

@end

NS_ASSUME_NONNULL_END
