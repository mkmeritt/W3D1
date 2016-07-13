//
//  ViewController.m
//  Image Gallery
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
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    UIImageView *view1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width , self.view.frame.size.height)];
    
    [view1 setImage:[UIImage imageNamed:@"Lighthouse"]];
    
    UIImageView *view2 = [[UIImageView alloc] initWithFrame:CGRectMake(view1.frame.origin.x + view1.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [view2 setImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    
    UIImageView *view3 = [[UIImageView alloc] initWithFrame:CGRectMake(view2.frame.origin.x + view2.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height )];
    
    [view3 setImage:[UIImage imageNamed:@"Lighthouse-night"]];
    
    [self.scrollView addSubview:view1];
    [self.scrollView addSubview:view2];
    [self.scrollView addSubview:view3];
    
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height);
    
    self.scrollView.pagingEnabled = true;
    self.scrollView.delegate = self;
}



@end
