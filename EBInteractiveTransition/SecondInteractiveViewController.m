//
//  SecondInteractiveViewController.m
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "SecondInteractiveViewController.h"

@implementation SecondInteractiveViewController
{
    UIPanGestureRecognizer *panGesture;
}

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor yellowColor];
    [self addGesture];
}

-(void) addGesture {
    panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(doPan:)];
    [self.view addGestureRecognizer:panGesture];
}

-(void) doPan:(UIPanGestureRecognizer *) panGesture {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    
}
@end
