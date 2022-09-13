//
//  InputCollector.m
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import "InputCollector.h"

@implementation InputCollector
-(instancetype) init {
    self = [super init];
    if (self) {
    }
    
    return self;
}


-(NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars[255];
    NSLog(@"%@" , promptString);
    char *result = fgets(inputChars, 255, stdin);
    if (result != NULL) {
        return [[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

@end
