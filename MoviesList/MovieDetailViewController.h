//
//  MovieDetailViewController.h
//  MoviesList
//
//  Created by Jack Mountain Lion on 11/6/55 BE.
//  Copyright (c) 2555 Prince of Songkhla University Computer Center. All rights reserved.
//

#import "Movie.h"
#import <UIKit/UIKit.h>

@interface MovieDetailViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (weak, nonatomic) IBOutlet UILabel *directorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearLabel;
@property (weak, nonatomic) IBOutlet UILabel *lengthLabel;
@property (weak, nonatomic) IBOutlet UILabel *rateLabel;
@property (weak, nonatomic) Movie *movie;
@end
