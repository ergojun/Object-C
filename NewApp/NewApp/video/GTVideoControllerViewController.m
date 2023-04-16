//
//  GTVideoControllerViewController.m
//  NewApp
//
//  Created by TJ1998 on 2023/4/16.
//

#import "GTVideoControllerViewController.h"

@interface GTVideoControllerViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation GTVideoControllerViewController

- (instancetype) init{
    self = [super init];
    if (self){
        
        self.tabBarItem.title = @"新闻";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    // 创建 UICollectionView ,需要设置屏幕大小和 flowlayout
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    
    // 设置 cell 的样式，先注册
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    
    // 设置 delegate 和 datasource,需要在上面 interface 声明
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    
    // 复制到屏幕上
    [self.view addSubview:collectionView];
}


#pragma mark - UICollectionView
 
// 设置 cell 的个数，默认大小是 50*50
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}



@end
