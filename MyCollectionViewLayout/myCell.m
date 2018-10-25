
//
//  myCell.m
//  MyCollectionViewLayout
//
//  Created by Cary on 2018/7/31.
//  Copyright © 2018年 Cary. All rights reserved.
//

#import "myCell.h"
#import <UIImageView+WebCache.h>
#import "Masonry.h"
@implementation myCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //添加自己需要个子视图控件
        //self.image = [[UIImageView alloc]initWithFrame:self.bounds];
        self.image = [[UIImageView alloc]init];
        [self.contentView addSubview:self.image];
       
        self.label = [[UILabel alloc]init];
        self.label.textColor = [UIColor blackColor];
        [self.contentView addSubview:self.label];
        
        [self.label mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.contentView.mas_bottom);
            make.width.equalTo(self.contentView.mas_width);
            make.height.mas_equalTo(20);
        }];
        [self.image mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView.mas_top);
            make.width.equalTo(self.contentView.mas_width);
            make.bottom.equalTo(self.label.mas_top).offset(-5);
        }];
       
    }
    return self;
}

- (void)setImageURL:(NSURL *)imageURL {
    
    _imageURL = imageURL;
   [self.image sd_setImageWithURL:self.imageURL];
    
}
@end
