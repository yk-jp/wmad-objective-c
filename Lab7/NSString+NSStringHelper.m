//
//  NSString+NSStringHelper.m
//  Lab7
//
//  Created by Yusuke K on 2022-09-07.
//

#import "NSString+NSStringHelper.h"

@implementation NSString (NSStringHelper)

- (NSString *) stringByPigInitialization {
    
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    NSString *words = @"";
    
    for(int i = 0; i < [[self componentsSeparatedByString:@" "] count]; i++){
        words = [clusters containsObject:[[self componentsSeparatedByString:@" "][i] substringWithRange: NSMakeRange(0, 2)]] ? [words stringByAppendingString: [[NSString stringWithFormat: @" %@",[[[[[self componentsSeparatedByString:@" "][i] substringFromIndex:2] stringByAppendingString: [[self componentsSeparatedByString:@" "][i] substringWithRange: NSMakeRange(0, 2)]] stringByAppendingString: @"ay"] lowercaseString]] capitalizedString]]
        :
        [words stringByAppendingString: [NSString stringWithFormat: @" %@", [[[[[self componentsSeparatedByString:@" "][i] substringFromIndex:1] stringByAppendingString: [[[self componentsSeparatedByString:@" "][i] substringWithRange: NSMakeRange(0, 2)] substringToIndex:1]] stringByAppendingString: @"ay"] capitalizedString]]];
    }
    
    return words;
}

@end
