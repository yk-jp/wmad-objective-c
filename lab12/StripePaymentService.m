//
//  StripePaymentService.m
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
-(void)processPaymentAmount: (NSInteger) amount {
    NSLog(@"Stripe: $%ld" , amount);
}

-(BOOL)canProcessPayment {
    return arc4random_uniform(1);
}

@end
