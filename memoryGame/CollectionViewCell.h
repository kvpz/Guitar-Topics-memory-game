//
//  CollectionViewCell.h
//  memoryGame
//
//  Created by Kevin Perez on 11/16/15.
//  Copyright (c) 2015 KevinPerez.COP4656. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell
@property (strong,nonatomic) NSString * imageFile;
@property (strong, nonatomic) IBOutlet UIImageView * fingerPositionImage;
@end
