//
//  Movie.h
//  MoviesList
//
//  Created by Jack Mountain Lion on 11/6/55 BE.
//  Copyright (c) 2555 Prince of Songkhla University Computer Center. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *detail;
@property (nonatomic, copy) NSString *director;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, unsafe_unretained) UIImage *image;
@property (nonatomic, assign) int year;
@property (nonatomic, assign) int length;
@property (nonatomic, assign) float rating;

-(id)initWithName:(NSString *)name
           Detail:(NSString *)detail
         Director:(NSString *)director
        ImageName:(NSString *)imageName
             Year:(int)year
           Length:(int)length
           Rating:(float)rating;
@end
