//
//  EBInteractiveTransitionDelegate.m
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "EBInteractiveTransitionDelegate.h"
#import "EBMapTransitionAnimator.h"
#import "EBSwipeTransitionInteractionController.h"
#import "AAPLSwipeTransitionAnimator.h"

@implementation EBInteractiveTransitionDelegate

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [[AAPLSwipeTransitionAnimator alloc] initWithTargetEdge:UIRectEdgeBottom];
//    return [[EBMapTransitionAnimator alloc] initWith:self.gesture];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
//    return [[EBMapTransitionAnimator alloc] initWith:self.gesture];
    return [[AAPLSwipeTransitionAnimator alloc] initWithTargetEdge:UIRectEdgeTop];
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator {
    self.swipe = [[EBSwipeTransitionInteractionController alloc] init];
    return self.swipe;
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator {
    self.swipe = [[EBSwipeTransitionInteractionController alloc] init];
    return self.swipe;
}

-(instancetype) initWith:(UIGestureRecognizer *) gesture {
    self = [super init];
    if (self) {
        self.gesture = gesture;
    }
    return self;
}
@end
