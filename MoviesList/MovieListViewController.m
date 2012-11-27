//
//  MovieListViewController.m
//  MoviesList
//
//  Created by Jack Mountain Lion on 11/6/55 BE.
//  Copyright (c) 2555 Prince of Songkhla University Computer Center. All rights reserved.
//

#import "Movie.h"
#import "MovieDetailViewController.h"
#import "MovieListViewController.h"

@implementation MovieListViewController{
    NSArray *movies;
}

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
    [self createMovies];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MovieCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    Movie *movie = [movies objectAtIndex:indexPath.row];
    cell.textLabel.text = movie.name;
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowMovieDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        MovieDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.movie = [movies objectAtIndex:indexPath.row];
    }
}

-(void)createMovies{
    
    NSSortDescriptor *sorter = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    
    movies = [[NSArray arrayWithObjects:
               [[Movie alloc] initWithName:@"The Twilight Saga: Breaking Dawn - Part 2"
                           Detail:@"After the birth of Renesmee, the Cullens gather other vampire clans in order to protect the child from a false allegation that puts the family in front of the Volturi."
                         Director:@"Bill Condon"
                        ImageName:@"TheTwiligthSaga.jpg"
                             Year:2012
                           Length:120
                           Rating:9.0],               
              [[Movie alloc] initWithName:@"Anna Karenina"
                           Detail:@"Set in late-19th-century Russia high-society, the aristocrat Anna Karenina enters into a life-changing affair with the affluent Count Vronsky."
                         Director:@"Joe Wright"
                        ImageName:@"AnnaKarenina.jpg"
                             Year:2012
                           Length:130
                           Rating:6.5],
              [[Movie alloc] initWithName:@"Silver Linings Playbook"
                           Detail:@"After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own."
                         Director:@"David O. Russell"
                        ImageName:@"SilverLiningsPlaybook.jpg"
                             Year:2012
                           Length:60
                           Rating:8.4],               
              [[Movie alloc] initWithName:@"Price Check"
                           Detail:@"Peter, a family man who works for a failing supermarket chain finds his life shaken up by his new boss, Susan, who starts to groom him for an executive position. Money and opportunities are within his grasp, but at what price?"
                         Director:@"Michael Walker"
                        ImageName:@"PriceCheck.jpg"
                             Year:2012
                           Length:92
                           Rating:8.5],
               nil] sortedArrayUsingDescriptors:[NSArray arrayWithObject:sorter]];
}

@end
