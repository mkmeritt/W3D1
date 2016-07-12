//
//  ViewController.m
//  MyScrollView
//
//  Created by Mark Meritt on 2016-07-12.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    [self.scrollView addGestureRecognizer:self.panGesture];
    
    _redBox = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    _greenBox = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    _blueBox = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    _yellowBox = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    
    [_redBox setBackgroundColor:[UIColor redColor]];
    [_greenBox setBackgroundColor:[UIColor greenColor]];
    [_blueBox setBackgroundColor:[UIColor blueColor]];
    [_yellowBox setBackgroundColor:[UIColor yellowColor]];
    
    [self.scrollView addSubview:_redBox];
    [self.scrollView addSubview:_greenBox];
    [self.scrollView addSubview:_blueBox];
    [self.scrollView addSubview:_yellowBox];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handlePanGesture:(UIPanGestureRecognizer *)recognizer{
  
    CGPoint translation = [recognizer translationInView:self.view];
    switch (recognizer.state) {
        case UIGestureRecognizerStateBegan:
            break;
        case UIGestureRecognizerStateChanged:
        self.scrollView.center = CGPointMake(self.scrollView.center.x, self.scrollView.center.y + translation.y);
            break;
        case UIGestureRecognizerStateEnded:
            break;
    }
    
    
    
    [recognizer setTranslation:CGPointZero inView:_scrollView];
    
}


@end
