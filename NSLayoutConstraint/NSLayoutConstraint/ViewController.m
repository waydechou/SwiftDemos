//
//  ViewController.m
//  NSLayoutConstraint
//
//  Created by Wayde C. on 6/20/16.
//  Copyright © 2016 Wayde C. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"使用 AutoLayout 的方式";
    UIView *purpleView = [[UIView alloc] init];
    purpleView.backgroundColor = [UIColor purpleColor];
    // 禁止将 AutoresizingMask 转换为 Constraints
//    purpleView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:purpleView];

    [self constraintInMasonryWithView:purpleView];
//    // 添加 width 约束
//    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:150];
//    [purpleView addConstraint:widthConstraint];
//
//    // 添加 height 约束
//    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:150];
//    [purpleView addConstraint:heightConstraint];

    // 添加 left 约束
//    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeLeftMargin relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeftMargin multiplier:1.0 constant:20];
//
//    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeRightMargin relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRightMargin multiplier:1.0 constant:0];
//
//
//    // 添加 top 约束
//    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
//
//    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint constraintWithItem:purpleView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
//    [self.view addConstraints:@[leftConstraint, rightConstraint, topConstraint, bottomConstraint]];

}

- (void)constraintInMasonryWithView: (UIView *)view {
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@100);
        make.height.equalTo(@100);
        
        make.center.equalTo(self.view);

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
