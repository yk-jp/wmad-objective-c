//
//  main.m
//  Lab2
//
//  Created by Yusuke K on 2022-08-31.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Box *box1 = [[Box alloc] initWithHeight:3.0 width:4.0 length:5.0]; // 60
        Box *box2 = [[Box alloc] initWithHeight:6.0 width:2.0 length:10.0]; // 120
        
        float volume1 = [box1 culcVolume];
        float volume2 = [box2 culcVolume];
        
        NSLog(@"volume = %f", volume1);
        NSLog(@"volume = %f", volume2);
        
        if (volume1 > volume2) {
            NSLog(@"How many times will one box fit inside the other box = %f", volume1 / volume2);
        } else {
            NSLog(@"How many times will one box fit inside the other box = %f", volume2 / volume1);
        }
    }
    return 0;
}
