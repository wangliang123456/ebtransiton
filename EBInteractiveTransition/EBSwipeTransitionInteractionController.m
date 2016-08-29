//
//  EBSwipeTransitionInteractionController.m
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "EBSwipeTransitionInteractionController.h"

@implementation EBSwipeTransitionInteractionController
{
    
}
-(instancetype) initWithGesture:(UIGestureRecognizer *) gesture {
    self = [super init];
    if (self) {
        [gesture addTarget:self action:@selector(doPan:)];
    }
    return self;
}

-(CGFloat) percentForGesture:(UIGestureRecognizer *) sender {
    return 0.5f;
}

-(void) doPan:(UIGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        return;
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        [self updateInteractiveTransition:[self percentForGesture:sender]];
    } else if(sender.state == UIGestureRecognizerStateEnded) {
        if ([self percentForGesture:sender] > 0.5) {
            [self finishInteractiveTransition];
        } else {
            [self cancelInteractiveTransition];
        }
    } else {
        [self cancelInteractiveTransition];
    }
}

-(void)startInteractiveTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    self.transitionContext = transitionContext;
}
@end
