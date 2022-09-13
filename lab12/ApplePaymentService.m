//
//  ApplePaymentService.m
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
-(void)processPaymentAmount: (NSInteger) amount {
    NSLog(@"Stripe: $%ld" , amount);
}

-(BOOL)canProcessPayment {
    return arc4random_uniform(2);
}
@end
