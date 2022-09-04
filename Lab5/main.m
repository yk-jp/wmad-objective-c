//
//  main.m
//  Lab5
//
//  Created by Yusuke K on 2022-09-03.
//

#import <Foundation/Foundation.h>

#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        BOOL isProcessing = YES;
        
        while(isProcessing) {
            NSString *userInput = [inputCollector inputForPrompt:@"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application"];
            
            if([userInput isEqualToString:@"q"]) {
                isProcessing = NO;
                NSLog(@"adieu");
                continue;
            }
            
            if([userInput isEqualToString:@"new"]) {
                NSString *name = [inputCollector inputForPrompt:@"Enter name"];
                NSString *email = [inputCollector inputForPrompt:@"Enter email"];
                
                Contact *newContact = [[Contact alloc] initWithName:name email: email];
                [[contactList data ] addObject: newContact];
                continue;
            }
            
            
        }
        
        
        
    }
    return 0;
}
