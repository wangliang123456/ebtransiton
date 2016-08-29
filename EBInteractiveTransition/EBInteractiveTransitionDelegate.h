//
//  EBInteractiveTransitionDelegate.h
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EBSwipeTransitionInteractionController.h"

@interface EBInteractiveTransitionDelegate : NSObject<UIViewControllerTransitioningDelegate>
@property(nonatomic,strong) UIGestureRecognizer *gesture;
@property(nonatomic,strong) EBSwipeTransitionInteractionController *swipe;
@end
