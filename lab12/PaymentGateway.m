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
    if(![self.paymentDelegate canProcessPayment]){
        NSLog(@"We owe you an apology. your payment cannot be processed.");
        return;
    }
    
    [self.paymentDelegate processPaymentAmount:amount];
}

@end
