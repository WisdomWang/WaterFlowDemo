//
//  myCell.h
//  MyCollectionViewLayout
//
//  Created by Cary on 2018/7/31.
//  Copyright © 2018年 Cary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myCell : UICollectionViewCell
@property (nonatomic, strong) NSURL *imageURL;
@property (nonatomic, strong)  UIImageView *image;
@property (nonatomic, strong) UILabel *label;
@end
