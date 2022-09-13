//
//  PaymentGateway.m
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import "PaymentGateway.h"



@implementation PaymentGateway  {
}


-(void)processPaymentAmount: (NSInteger) amount {
    [self.paymentDelegate processPaymentAmount:amount];
}

@end
