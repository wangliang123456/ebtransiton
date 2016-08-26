//
//  EBMapTransitionAnimator.m
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "EBMapTransitionAnimator.h"

@implementation EBMapTransitionAnimator
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 5.0;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    NSLog(@"animateTransition");
}

-(instancetype) initWith:(UIGestureRecognizer *) gesture {
    self = [super init];
    if (self) {
        self.gesture = gesture;
    }
    return self;
}
@end
