//
//  ViewController.m
//  Image Gallery
//
//  Created by Mark Meritt on 2016-07-12.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ViewController.h"
#import "ImageDetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height);
    
    self.scrollView.pagingEnabled = true;
    self.scrollView.delegate = self;
    
    self.pageCtrl.currentPage = 0;
    
    NSArray *imgNames = @[@"Lighthouse", @"Lighthouse-in-Field", @"Lighthouse-night"];
    CGFloat offset = 0;
    
    for (NSString* imgName in imgNames) {
        
        UIImageView *view1 = [[UIImageView alloc] initWithFrame:CGRectMake(offset, 0, self.view.frame.size.width , self.view.frame.size.height)];
        
        [view1 setImage:[UIImage imageNamed:imgName]];
        
        offset += view1.frame.size.width;
        
        [self.scrollView addSubview:view1];
        
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
        [view1 addGestureRecognizer:tapGesture];
        
        view1.userInteractionEnabled = YES;

    }
    

}

-(void)handleTap:(UITapGestureRecognizer *)sender{

   
    if(sender.state == UIGestureRecognizerStateEnded){
        
        [self performSegueWithIdentifier:@"ShowDetail" sender:sender.view];
    
    }
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    ImageDetailViewController *destination = segue.destinationViewController;
    destination.detailImg = ((UIImageView*)sender).image;
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    CGFloat pageWidth = CGRectGetWidth(scrollView.frame);
    CGFloat currentPage = floor((scrollView.contentOffset.x - pageWidth/2)/pageWidth)+1;
    
    self.pageCtrl.currentPage = currentPage;
    
}



@end
