//
//  DetailViewController.h
//  memoryGame
//
//  Created by Kevin Perez on 11/11/15.
//  Copyright (c) 2015 KevinPerez.COP4656. All rights reserved.
//
/*
 
 The UICollectionViewDelegateFlowLayout protocol defines methods that let you coordinate with a UICollectionViewFlowLayout object to implement a grid-based layout. The methods of this protocol define the size of items and the spacing between items in the grid.
 
 
 */
#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface DetailViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
{
	AVAudioPlayer * player;
	int playState;
	NSString * sound;
	float playLength;
	NSInteger Points;
}
@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) id tableItem;


@end

