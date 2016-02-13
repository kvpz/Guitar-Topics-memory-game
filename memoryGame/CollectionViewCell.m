//
//  CollectionViewCell.m
//  memoryGame
//
//  Created by Kevin Perez on 11/16/15.
//  Copyright (c) 2015 KevinPerez.COP4656. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell



#pragma mark - Initialization

/*
	Initializes and returns a newly allocated view object with the specified frame rectangle.
 -(CollectionViewCell *)dequeueReusableCellWithReuseIdentifier: forIndexPath:  calls this
 method when a new cell must be created.
 */

-(id)initWithFrame:(CGRect)frame
{
  if (!(self = [super initWithFrame:frame]))
		return nil;
	/*
	UIImage * image = [[UIImage alloc] init];
	image = [UIImage imageWithContentsOfFile:@"F.png"];
	if(self.imageFile == nil)
	{
		NSLog(@"Uh hellloooooooooo");

	}
	 
	self.fingerPositionImage = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
	
	[self.contentView addSubview:[self.fingerPositionImage initWithImage:image]];
	*/
//	UIView *selectedBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
//	selectedBackgroundView.backgroundColor = [UIColor whiteColor];
//	self.selectedBackgroundView = selectedBackgroundView;

  return self;
	
}


/*
	UICollectionView inherits this method from UICollectionReusableView.
 -(CollectionViewCell *)dequeueReusableCellWithReuseIdentifier: forIndexPath: calls
 this method when an existing cell is available for reuse.
 */
-(void)prepareForReuse
{
	[super prepareForReuse];
	
}

-(void)setImage:(UIImage *)image
{
	self.fingerPositionImage = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
	[self.contentView addSubview:[self.fingerPositionImage initWithImage:image]];
}
 
@end