//
//  GTVideoViewController.m
//  SampleApp
//
//  Created by TJ1998 on 2023/2/6.
//

#import "GTVideoViewController.h"

// 11.6 声明 delegate 和 datasource
@interface GTVideoViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation GTVideoViewController

- (instancetype)init {
    self = [super init];

    if (self) {
        self.tabBarItem.title = @"视频";
        self.tabBarItem.image = [UIImage imageNamed:@"nav_setting.png"];
    }

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor whiteColor];

    // 11.1 创建一个Flowlayout
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    // 12. 设置每一行的间距
    flowLayout.minimumLineSpacing = 10;
    // 12.1 设置每一行中每个元素间距
    flowLayout.minimumInteritemSpacing = 10;
    // 12.1.2 设置每个元素大小
    flowLayout.itemSize = CGSizeMake((self.view.frame.size.width - 10) / 2, 300);

    // 11.创建一个 collectionview
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];

    // 11.5 和 tableview cell 一样，设置 delegate 和 datasource
    collectionView.delegate = self;
    collectionView.dataSource = self;

    // 和 tableview 的区别：要先注册
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];

    // 11.2 将 layoutview 放到屏幕上
    [self.view addSubview:collectionView];
}

// 实现 uicollectionviewcelldatacource 必须实现的两个函数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    // 返回 item 个数 默认是 50x50
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    // 和 tableview cell 一样，去系统回收池中去取
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];

    cell.backgroundColor = [UIColor redColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.item % 3 == 0) {
        return CGSizeMake(self.view.frame.size.width, 100);
    } else {
        return CGSizeMake((self.view.frame.size.width - 10) / 2, 300);
    }
}

@end
