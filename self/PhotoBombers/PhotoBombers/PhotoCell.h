//
//  PhotoCell.h
//  PhotoBombers
//
//  Created by Weinan Qiu on 2014-10-20.
//  Copyright (c) 2014 Eland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoCell : UICollectionViewCell

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) NSDictionary *photo;

@end
