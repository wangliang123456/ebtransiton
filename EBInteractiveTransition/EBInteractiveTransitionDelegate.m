//
//  EBInteractiveTransitionDelegate.m
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "EBInteractiveTransitionDelegate.h"
#import "EBMapTransitionAnimator.h"

@implementation EBInteractiveTransitionDelegate

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [[EBMapTransitionAnimator alloc] initWith:self.gesture];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [[EBMapTransitionAnimator alloc] initWith:self.gesture];
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator {
    return nil;
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator {
    return nil;
}

-(instancetype) initWith:(UIGestureRecognizer *) gesture {
    self = [super init];
    if (self) {
        self.gesture = gesture;
    }
    return self;
}
@end