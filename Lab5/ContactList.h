//
//  ContactList.h
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import <Foundation/Foundation.h>

#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray *data;

-(void) addContactWithContact: (Contact*) contact;
-(void) showContact;

@end

NS_ASSUME_NONNULL_END
