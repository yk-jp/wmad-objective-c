//
//  InputHandler.m
//  Lab3
//
//  Created by Yusuke K on 2022-09-01.
//

#import "InputHandler.h"

@implementation InputHandler {
    
}

-(instancetype) init {
    self = [super init];
    
    return self;
}

+ (NSString*) getUserInput {
    char inputChars[255];
    char *result = fgets(inputChars, 255, stdin);
    if (result != NULL) {
        return [[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}


@end
