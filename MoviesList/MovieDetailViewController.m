//
//  MovieDetailViewController.m
//  MoviesList
//
//  Created by Jack Mountain Lion on 11/6/55 BE.
//  Copyright (c) 2555 Prince of Songkhla University Computer Center. All rights reserved.
//

#import "MovieDetailViewController.h"

@implementation MovieDetailViewController

@synthesize movie;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)setupView {
    self.nameLabel.text = self.movie.name;
    self.detailTextView.text = self.movie.detail;
    self.imageView.image = self.movie.image;
    self.directorNameLabel.text = self.movie.director;
    self.yearLabel.text = [NSString stringWithFormat:@"%d", self.movie.year];
    self.lengthLabel.text = [NSString stringWithFormat:@"%d minutes", self.movie.length];
    self.rateLabel.text = [NSString stringWithFormat:@"%.1f (IMDB)", self.movie.rating];
}

@end
