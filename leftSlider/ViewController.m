//
//  ViewController.m
//  leftSlider
//
//  Created by DaysSummer on 16/2/15.
//  Copyright © 2016年 SayDy. All rights reserved.
//

#import "ViewController.h"
#import "LeftSliderView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIScrollView *view = (UIScrollView *)self.view;
    view.contentSize = [UIScreen mainScreen].bounds.size;
    view.alwaysBounceVertical = YES;
    UIScreenEdgePanGestureRecognizer *gesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(screenEdgeGesture:)];
    gesture.edges = UIRectEdgeLeft;
    [view addGestureRecognizer:gesture];

}

- (void)screenEdgeGesture:(UIScreenEdgePanGestureRecognizer *)gesture {

    if (gesture.state == UIGestureRecognizerStateBegan) {
        LeftSliderView *leftSlider = [[LeftSliderView alloc] initWithFrame:self.view.bounds];
        [leftSlider showInView:self.view];
    }

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    LeftSliderView *leftSlider = [[LeftSliderView alloc] initWithFrame:self.view.bounds];
    [leftSlider showInView:self.view];
}
@end
