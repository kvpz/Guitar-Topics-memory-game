//
//  DetailViewController.m
//  memoryGame
//
//  Created by Kevin Perez on 11/11/15.
//  Copyright (c) 2015 KevinPerez.COP4656. All rights reserved.
//

#import "DetailViewController.h"
#import "CollectionViewCell.h"


@interface DetailViewController ()
	@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
	
@end

@implementation DetailViewController

	NSArray* collectionViewImages;
	static NSString * cellIdentifier = @"cellIdentifier";

#pragma mark - Managing the detail item

-(void)setDetailItem:(id)newDetailItem
{
  if (_detailItem != newDetailItem) // expecting new cell items
	{
	  _detailItem = newDetailItem;
		[self configureView];
	}
	
}


- (void)configureView
{
	if (self.detailItem)
	{

	}
	
}


-(void)viewDidLoad
{
	NSLog(@"ViewDidLoad for DETAIL");
	[super viewDidLoad];
	self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

	// typecasting collectionViewLayout to create -FlowLayout
	UICollectionViewFlowLayout * layout = (UICollectionViewFlowLayout *)self.collectionView.collectionViewLayout;
	
	self.collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
	[self.view addSubview:self.collectionView];
	[self.collectionView setDataSource:self];  // adopted from UICollectionViewDataSource
	[self.collectionView setDelegate:self];    // adopted from UICollectionViewDelegate

	[self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:cellIdentifier];
	[self.collectionView setBackgroundColor:[UIColor redColor]];

	
	collectionViewImages = [NSArray arrayWithObjects:@"A.png", @"F.png", @"C.png", @"D.png", @"E.png", @"G.png",nil];
	layout.sectionInset = UIEdgeInsetsMake(10,10,10,10);
	layout.itemSize = CGSizeMake(80,80);      //change depending on orientation
/*
	playState = 0;
	player = [[AVAudioPlayer alloc]
						initWithContentsOfURL:[NSURL fileURLWithPath:
																	 [[NSBundle mainBundle] pathForResource:sound ofType:@"m4a"]]
						error:nil];
	[self configureView];
 */
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

/**** Delegate Methods ****/

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	return 3;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
	return 2;
}

/*
	Called for each new cell to be placed in CollectionView
 */
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"In cellForItemAtIndexPath: %@", indexPath);
	CollectionViewCell * cell = (CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];

	NSUInteger index;
	if(indexPath.section == 0)
	{
		index = indexPath.row;
	}
	else
	{
		index = indexPath.row + 3;
	}

	UIImageView * collectionImageView = (UIImageView *)[cell viewWithTag:0];
	collectionImageView.image = [UIImage imageNamed:[collectionViewImages objectAtIndex:index]];
	NSLog(@"image name: %@", [collectionViewImages objectAtIndex:index]);
	return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
	id selection = [[self.detailItem objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
	if([self.tableItem isEqualToString:selection])
	{
		sound = @"correct.m4a";
		NSLog(@"You got 100 points!");
		Points += 100; 
	}
	else
	{
		sound = @"incorrect.mp3";
	}
	
}

/*
-(IBAction)playSound:(id)sender{
	
	if(playState == 0){
		
		[player play];
		
		UIImage *buttonImage = [UIImage imageNamed:@"pausebutton.png"];
		//[playButton setImage:buttonImage forState:UIControlStateNormal];
		
		playState = 1;
		stopWatch = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerTicked) userInfo:nil repeats:YES];
		timerEndTime = [NSDate timeIntervalSinceReferenceDate] + playLength + 0.2;
	}
	else
	{
		[player pause];
		UIImage *buttonImage = [UIImage imageNamed:@"playbutton.png"];
		[playButton setImage:buttonImage forState:UIControlStateNormal];
		[self resetTimer];
		playState = 0;
	}
	
	
}
*/

@end
