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
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    [self addGesture];
}

-(void) addGesture {
    panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(doPan:)];
    [self.view addGestureRecognizer:panGesture];
}

-(void) doPan:(UIPanGestureRecognizer *) sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        SecondInteractiveViewController *secondViewController = [[SecondInteractiveViewController alloc] initWithNibName:@"SecondInteractiveViewController" bundle:nil];
        EBInteractiveTransitionDelegate *transitionDelegate = [[EBInteractiveTransitionDelegate alloc] init];
        secondViewController.transitioningDelegate = transitionDelegate;
        secondViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:secondViewController animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
