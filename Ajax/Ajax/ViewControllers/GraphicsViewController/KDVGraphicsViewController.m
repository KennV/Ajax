//
//  DetailViewController.m
//  Ajax
//
//  Created by Kenn Villegas on 12/26/17.
//  Copyright © 2017 Kenn Villegas. All rights reserved.
//

#import "KDVGraphicsViewController.h"

@interface KDVGraphicsViewController ()

@end

@implementation KDVGraphicsViewController

- (void)configureView {
  // Update the user interface for the detail item.
  if (self.detailItem) {
      self.detailDescriptionLabel.text = [self.detailItem description];
  }
}


- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(NSDate *)newDetailItem {
  if (_detailItem != newDetailItem) {
      _detailItem = newDetailItem;
      
      // Update the view.
      [self configureView];
  }
}


@end
