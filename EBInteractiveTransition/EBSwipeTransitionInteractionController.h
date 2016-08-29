//
//  EBSwipeTransitionInteractionController.h
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EBSwipeTransitionInteractionController : UIPercentDrivenInteractiveTransition
@property(nonatomic,strong) UIGestureRecognizer *gesture;
@property(nonatomic,strong) id<UIViewControllerContextTransitioning> transitionContext;
-(instancetype) initWithGesture:(UIGestureRecognizer *) gesture;
@end
