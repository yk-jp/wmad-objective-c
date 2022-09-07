//
//  GameController.h
//  Lab6
//
//  Created by Yusuke K on 2022-09-07.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

-(instancetype) initWithDices: (NSMutableArray*) dices;

@property NSMutableArray *dices;
@property NSMutableDictionary *heldDices;

-(void) holdDice:(NSInteger) idx;

-(void) resetDice;

@end

NS_ASSUME_NONNULL_END
