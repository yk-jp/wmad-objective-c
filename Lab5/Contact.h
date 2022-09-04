//
//  Contact.h
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;

-(instancetype) initWithName: (NSString*) name email: (NSString*) email;

@end

NS_ASSUME_NONNULL_END
