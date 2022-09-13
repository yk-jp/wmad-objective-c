//
//  AmazonPaymentService.h
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject<PaymentDelegate>
-(void)processPaymentAmount: (NSInteger) amount;
-(BOOL)canProcessPayment;
@end

NS_ASSUME_NONNULL_END
