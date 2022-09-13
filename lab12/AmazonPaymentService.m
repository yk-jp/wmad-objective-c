//
//  AmazonPaymentService.m
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void)processPaymentAmount: (NSInteger) amount {
    NSLog(@"Amazon: $%ld" , amount);
}
@end
