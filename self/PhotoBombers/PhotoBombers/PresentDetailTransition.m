//
//  PresentDetailTransition.m
//  PhotoBombers
//
//  Created by Weinan Qiu on 2014-10-21.
//  Copyright (c) 2014 Eland. All rights reserved.
//

#import "PresentDetailTransition.h"

@implementation PresentDetailTransition

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    
    detail.view.alpha = 0.0;
    CGRect frame = containerView.bounds;
    frame.origin.y += 20;
    frame.size.height -= 20;
    detail.view.frame = frame;
    [containerView addSubview:detail.view];
    
    [UIView animateWithDuration:0.3 animations:^{
        detail.view.alpha = 1.0;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

@end
