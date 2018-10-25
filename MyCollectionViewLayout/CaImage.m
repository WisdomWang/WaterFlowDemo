


//
//  CaImage.m
//  MyCollectionViewLayout
//
//  Created by Cary on 2018/7/31.
//  Copyright © 2018年 Cary. All rights reserved.
//

#import "CaImage.h"

@implementation CaImage

+(instancetype)imageWithImageDic:(NSDictionary *)imageDic {
    
    CaImage *image = [[CaImage alloc]init];
    image.imageURL = [NSURL URLWithString:imageDic[@"img"]];
    image.imageW = [imageDic[@"w"] floatValue];
    image.imageH = [imageDic[@"h"] floatValue];
    image.price =  imageDic[@"price"];
    return image;
}
@end
