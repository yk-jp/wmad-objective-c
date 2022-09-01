//
//  Box.h
//  Lab2
//
//  Created by Yusuke K on 2022-08-31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

- (instancetype)initWithHeight: (float) height width: (float) width length: (float) length;
-(float) culcVolume;



@end

NS_ASSUME_NONNULL_END
