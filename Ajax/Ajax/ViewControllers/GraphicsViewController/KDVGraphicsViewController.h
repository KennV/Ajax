//
//  DetailViewController.h
//  Ajax
//
//  Created by Kenn Villegas on 12/26/17.
//  Copyright © 2017 Kenn Villegas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KDVGraphicsViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

