//
//  main.m
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [InputCollector new];
        
        NSInteger cost = arc4random_uniform(901) + 100;
        NSString *userInput = [inputCollector inputForPrompt:
                               [NSString stringWithFormat: @"\nThank you for shopping at Acme.com Your total today is$%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon\n",cost]]
                               ;
        
        PaymentGateway *paymentGateWay = [[PaymentGateway alloc ] init];
        
        NSInteger option = [userInput intValue];
        
        switch(option) {
            case 1: {
                PaypalPaymentService *payPalPaymentService = [PaypalPaymentService new];
                paymentGateWay.paymentDelegate = payPalPaymentService;
                [paymentGateWay processPaymentAmount: cost];
                break;
            }
            case 2: {
                StripePaymentService *stripePaymentService = [StripePaymentService new];
                paymentGateWay.paymentDelegate = stripePaymentService;
                [paymentGateWay processPaymentAmount: cost];
                break;
            }
            case 3: {
                AmazonPaymentService *amazonPaymentService = [AmazonPaymentService new];
                paymentGateWay.paymentDelegate = amazonPaymentService;
                [paymentGateWay processPaymentAmount: cost];
                break;
            }
            default:
                break;
        }
    }
    return 0;
}
