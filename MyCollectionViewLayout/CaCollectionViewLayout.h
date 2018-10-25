//
//  CaCollectionViewLayout.h
//  MyCollectionViewLayout
//
//  Created by Cary on 2018/7/30.
//  Copyright © 2018年 Cary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CaCollectionViewLayout : UICollectionViewLayout
//总列数
@property (nonatomic, assign) NSInteger columnCount;
//列间距
@property (nonatomic, assign) NSInteger columnSpacing;
//行间距
@property (nonatomic, assign) NSInteger rowSpacing;
//section到collectionView的边距
@property (nonatomic, assign) UIEdgeInsets sectionInset;
//保存每一列最大y值的数组
@property (nonatomic, strong) NSMutableDictionary *maxYDic;
//保存每一个item的attributes的数组
@property (nonatomic, strong) NSMutableArray *attributesArray;

//计算item高度的block，将item的高度与indexPath传递给外界
@property (nonatomic,strong) CGFloat(^itemHeightBlock)(CGFloat itemHeight,NSIndexPath *indexPath);

//设置item间距
- (void)setColumnSpacing:(NSInteger)columnSpacing rowSpacing:(NSInteger)rowSepacing sectionInset:(UIEdgeInsets)sectionInset;

//初始化方法
- (instancetype)initWithColumnCount:(NSInteger)columnCount;
@end
