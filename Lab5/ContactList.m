//
//  ContactList.m
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype) init {
    self = [super init];
    if (self) {
        _data = [NSMutableArray new];
    }
    
    return self;
}

@end
