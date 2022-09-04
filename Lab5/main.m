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
            
            if([userInput isEqualToString:@"q"] || [userInput isEqualToString:@"quit"]) {
                isProcessing = NO;
                NSLog(@"adieu");
                continue;
            }
            
            if([userInput isEqualToString:@"new"]) {
                NSString *name = [inputCollector inputForPrompt:@"Enter name\n"];
                NSString *email = [inputCollector inputForPrompt:@"Enter email\n"];
                
                Contact *newContact = [[Contact alloc] initWithName:name email: email];
                [contactList addContactWithContact : newContact];
                continue;
            }
            
            if([userInput isEqualToString:@"list"]) {
                [contactList showContact];
                continue;
            }
            
        }
    }
    return 0;
}
