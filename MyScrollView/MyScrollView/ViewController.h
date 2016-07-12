//
//  ViewController.h
//  MyScrollView
//
//  Created by Mark Meritt on 2016-07-12.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyScrollView.h"

@interface ViewController : UIViewController

-(void)handlePanGesture:(UIPanGestureRecognizer*)sender;
@property (strong, nonatomic) IBOutlet UIView *redBox;
@property (strong, nonatomic) IBOutlet UIView *greenBox;
@property (strong, nonatomic) IBOutlet UIView *yellowBox;
@property (strong, nonatomic) IBOutlet UIView *blueBox;
@property (nonatomic) UIPanGestureRecognizer *panGesture;

@property (weak, nonatomic) IBOutlet MyScrollView *scrollView;

@end

