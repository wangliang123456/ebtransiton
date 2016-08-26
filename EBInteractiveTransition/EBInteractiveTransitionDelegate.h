//
//  EBInteractiveTransitionDelegate.h
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EBInteractiveTransitionDelegate : NSObject<UIViewControllerTransitioningDelegate>
@property(nonatomic,strong) UIGestureRecognizer *gesture;

//-(instancetype) initWith:(UIGestureRecognizer *) gesture;

@end
