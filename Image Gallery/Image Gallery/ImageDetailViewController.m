//
//  ImageDetailViewController.m
//  Image Gallery
//
//  Created by Mark Meritt on 2016-07-12.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController ()

@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    
    [self.scrollView setMinimumZoomScale:1.0];
    [self.scrollView setMaximumZoomScale:3.0];
}

-(void)viewWillAppear:(BOOL)animated{
    self.imgView.image = self.detailImg;
    
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
        return self.imgView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
