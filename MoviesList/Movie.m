//
//  Movie.m
//  MoviesList
//
//  Created by Jack Mountain Lion on 11/6/55 BE.
//  Copyright (c) 2555 Prince of Songkhla University Computer Center. All rights reserved.
//

#import "Movie.h"

@implementation Movie
@synthesize name = _name, detail = _detail, director = _director;
@synthesize year = _year, length = _length, rating  = _rating, imageName = _imageName;

-(UIImage *)image{
    return [UIImage imageNamed:self.imageName];
}

-(id)initWithName:(NSString *)name
           Detail:(NSString *)detail
         Director:(NSString *)director
        ImageName:(NSString *)imageName
             Year:(int)year
           Length:(int)length
           Rating:(float)rating{
    self = [super init];
    if (self) {
        self.name = name;
        self.detail = detail;
        self.director = director;
        self.year = year;
        self.length = length;
        self.rating = rating;
        self.imageName = imageName;
    }
    return self;
}
@end
