//
//  ContactList.m
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(instancetype) init {
    self = [super init];
    if (self) {
        _data = [NSMutableArray new];
    }
    
    return self;
}

-(void) addContactWithContact: (Contact*) contact {
    [_data addObject: contact];
}

-(void) showContact {
   for(int i = 0; i < [_data count]; i++) {
       NSLog(@"%d: <%@>(%@)\n", i, [[_data objectAtIndex: i] name], [[_data objectAtIndex: i] email]);
   }
}

@end
