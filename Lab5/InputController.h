//
//  InputController.h
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

+(NSString*) inputForPrompt:(NSString*) promptString;

@end

NS_ASSUME_NONNULL_END
