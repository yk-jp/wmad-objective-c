//
//  PaymentGateway.h
//  lab12
//
//  Created by Yusuke K on 2022-09-13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>
-(void)processPaymentAmount: (NSInteger) amount;
@end

@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

-(void)processPaymentAmount: (NSInteger) amount;

@end

NS_ASSUME_NONNULL_END
