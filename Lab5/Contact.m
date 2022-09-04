//
//  Contact.m
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import "Contact.h"

@implementation Contact

-(instancetype) initWithName: (NSString*) name email: (NSString*) email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    
    return self;
}

@end
