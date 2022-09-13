//
//  PaypalPaymentService.m
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount: (NSInteger) amount {
    NSLog(@"paypal: $%ld" , amount);
}

-(BOOL)canProcessPayment {
    return arc4random_uniform(1);
}

@end
