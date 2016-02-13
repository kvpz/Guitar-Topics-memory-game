//
//  MasterViewController.h
//  memoryGame
//
//  Created by Kevin Perez on 11/11/15.
//  Copyright (c) 2015 KevinPerez.COP4656. All rights reserved.
//
/*
 Left as is upon xcode automatically creating the project template
 Master-Detail Application.
 11/13/15
 
 */

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>
{
	NSArray * Chords;
	NSArray * Chords_2;
}

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

