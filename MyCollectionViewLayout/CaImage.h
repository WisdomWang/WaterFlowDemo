//
//  CaImage.h
//  MyCollectionViewLayout
//
//  Created by Cary on 2018/7/31.
//  Copyright © 2018年 Cary. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CaImage : NSObject

@property (nonatomic, strong) NSURL *imageURL;
@property (nonatomic, assign) CGFloat imageW;
@property (nonatomic, assign) CGFloat imageH;
@property (nonatomic, copy) NSString *price;

+ (instancetype)imageWithImageDic:(NSDictionary *)imageDic;

@end
