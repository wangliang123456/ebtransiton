//
//  ViewController.m
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "FirstInteractiveViewController.h"

@interface FirstInteractiveViewController ()

@end

@implementation FirstInteractiveViewController
{
    UIPanGestureRecognizer *panGesture;
    EBInteractiveTransitionDelegate *transitionDelegate;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    [self addGesture];
}

-(void) addGesture {
    panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(doPan:)];
    [self.view addGestureRecognizer:panGesture];
}

-(void) doPan:(UIPanGestureRecognizer *) sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        SecondInteractiveViewController *secondViewController = [[SecondInteractiveViewController alloc] initWithNibName:@"SecondInteractiveViewController" bundle:nil];
        transitionDelegate = [[EBInteractiveTransitionDelegate alloc] init];
        secondViewController.transitioningDelegate = transitionDelegate;
        secondViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:secondViewController animated:YES completion:nil];
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        NSLog(@"UIGestureRecognizerStateChanged");
        [transitionDelegate.swipe updateInteractiveTransition:0.5];
    } else if (sender.state == UIGestureRecognizerStateCancelled) {
        NSLog(@"UIGestureRecognizerStateCancelled");
        [transitionDelegate.swipe cancelInteractiveTransition];
    } else {
        NSLog(@"UIGestureRecognizerStateend");
        if (0.6 > 0.5) {
            [transitionDelegate.swipe finishInteractiveTransition];
        } else {
            [transitionDelegate.swipe cancelInteractiveTransition];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
