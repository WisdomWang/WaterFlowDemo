//
//  ViewController.m
//  MyCollectionViewLayout
//
//  Created by Cary on 2018/7/30.
//  Copyright © 2018年 Cary. All rights reserved.
//

#import "ViewController.h"
#import "CaCollectionViewLayout.h"
#import "CaImage.h"
#import "myCell.h"
#import "Masonry.h"

@interface ViewController ()<UICollectionViewDataSource>
@property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) NSMutableArray<CaImage *> *images;
@end

@implementation ViewController

- (NSMutableArray *)images {

    if (!_images) {
        
        _images = [[NSMutableArray alloc]init];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"shop.plist" ofType:nil];
        NSArray *imageDics = [NSArray arrayWithContentsOfFile:path];
        for (NSDictionary *imageDic in imageDics) {
            CaImage *image = [CaImage imageWithImageDic:imageDic];
            [_images addObject:image];
        }
    }
    
    return _images;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CaCollectionViewLayout *layout = [[CaCollectionViewLayout alloc]init];
    [layout setColumnSpacing:10 rowSpacing:10 sectionInset:UIEdgeInsetsMake(10, 10, 20, 10)];
    [layout setItemHeightBlock:^CGFloat(CGFloat itemHeight, NSIndexPath *indexPath) {
        CaImage *image = self.images[indexPath.item];
        return image.imageH / image.imageW * itemHeight;
    }];
    self.collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[myCell class] forCellWithReuseIdentifier:@"layoutCell"];
    self.collectionView.dataSource = self;
    [self.view addSubview:self.collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    myCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"layoutCell" forIndexPath:indexPath];
    //cell.image.frame = cell.bounds;
    cell.imageURL = self.images[indexPath.item].imageURL;
    cell.label.text = self.images[indexPath.item].price;
    cell.backgroundColor = [UIColor redColor];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
