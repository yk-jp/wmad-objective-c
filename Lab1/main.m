//
//  main.m
//  Lab1
//
//  Created by Yusuke K on 2022-08-30.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, char *prompt) {
  if (maxLength < 1) {
    maxLength = 255;
  }
  char inputChars[maxLength];
  printf("%s", prompt);
    
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}

void printOptions() {
  char  *options[] = {"Uppercase", "Lowercase", "Numberize", "Canadianize", "Respond", "De-Space-It", "Word Count", "Done"};
    int size = (sizeof options) / (sizeof options[0]); // divide the size of the array by the size of each element (in bytes).
    
    printf("Choose one of the following options:\n");
    for(int i = 0; i < size; i+=1) {
        printf("%d. %s\n", i + 1, options[i]);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(1) {
            NSString *input = getUserInput(255, "Enter your string: ('q' to quit)\n");
            
            if([input isEqualToString:@"q"]) {
                break;
            }
            
            BOOL isProcessing = YES;
            
            while(isProcessing) {
                printOptions();
                int option = [getUserInput(255, "") intValue];
                
                switch(option){
                    case 1:
                        NSLog(@"%@",[input uppercaseString]);
                        break;
                    case 2:
                        NSLog(@"%@", [input lowercaseString]);
                        break;

                    case 3:
                    {
                        int num = [input intValue];
                        NSLog(@"%d", num);
                        break;
                    }
                    case 4:
                        NSLog(@"%@", [input stringByAppendingString: @",eh?"]);
                        break;
                    case 5:{
                         NSLog(@"%@", [input substringFromIndex:[input length] - 1]);
                        if([[input substringFromIndex:[input length] - 1] isEqualToString:@"?"]) {
                            NSLog(@"I don't know");
                        } else if ([[input substringFromIndex:[input length] - 1] isEqualToString:@"!"]) {
                            NSLog(@"Whoa, calm down!");
                        }
                        break;
                    }
                    case 6:
                        NSLog(@"%@",[input stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                        break;
                    case 7:
                        NSLog(@"%d", (int)[input length]);
                        break;
                    case 8:
                        NSLog(@"Next String!");
                        isProcessing = NO;
                        break;

                    default:
                        break;
                }
            }
        }
        
        
    }
    return 0;
}
