//
//  SPViewController.m
//  SPScrollableTabViewController
//
//  Created by guangmingzizai@qq.com on 01/15/2018.
//  Copyright (c) 2018 guangmingzizai@qq.com. All rights reserved.
//

#import "SPViewController.h"
#import "SPCoverSubViewController.h"

#define CoverHeight 245

@interface SPViewController ()

@end

@implementation SPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.minYPullUp = KNAVIGATIONANDSTATUSBARHEIGHT;
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationController.navigationBarHidden=NO;
    self.title = @"SPPage";
}

- (NSString *)titleForIndex:(NSInteger)index
{
    return [NSString stringWithFormat:@"TAB%zd", index];
}

- (BOOL)needMarkView
{
    return YES;
}

- (UIView *)preferCoverView
{
    UIImageView *view = [[UIImageView alloc] initWithFrame:[self preferCoverFrame]];
    view.image = [UIImage imageNamed:@"Cinder.jpg"];
    view.contentMode = UIViewContentModeScaleAspectFit;
    
    return view;
}

- (CGFloat)preferTabY
{
    return CoverHeight;
}

- (CGRect)preferCoverFrame
{
    return CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CoverHeight);
}

- (UIViewController *)controllerAtIndex:(NSInteger)index
{
    SPCoverSubViewController *coverController = [[SPCoverSubViewController alloc] init];
    coverController.view.frame = [self preferPageFrame];
    
    if (index == 0) {
        coverController.view.backgroundColor = [UIColor greenColor];
    } else if (index == 1) {
        coverController.view.backgroundColor = [UIColor orangeColor];
    } else {
        coverController.view.backgroundColor = [UIColor redColor];
    }
    
    return coverController;
    
}
-(NSInteger)preferPageFirstAtIndex {
    return 1;
}

-(BOOL)isSubPageCanScrollForIndex:(NSInteger)index
{
    return YES;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (NSInteger)numberOfControllers
{
    return 8;
}

-(BOOL)isPreLoad {
    return YES;
}

@end
