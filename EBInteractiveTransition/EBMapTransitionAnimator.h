//
//  EBMapTransitionAnimator.h
//  EBInteractiveTransition
//
//  Created by Eric on 2016/8/26.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EBMapTransitionAnimator : NSObject<UIViewControllerAnimatedTransitioning>
@property(nonatomic,strong) UIGestureRecognizer *gesture;
-(instancetype) initWith:(UIGestureRecognizer *) gesture;
@end
