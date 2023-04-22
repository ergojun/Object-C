//
//  TableViewCell.m
//  NewApp
//
//  Created by TJ1998 on 2023/4/22.
//

#import "TableViewCell.h"

@interface TableViewCell ()

// 创建三个 label
@property(nonatomic, strong, readwrite) UILabel *titleLabel;
@property(nonatomic, strong, readwrite) UILabel *sourceLabel;
@property(nonatomic, strong, readwrite) UILabel *commendLabel;
@property(nonatomic, strong, readwrite) UILabel *timeLabel;

@property(nonatomic, strong, readwrite) UIImageView *rightimageView;


@end

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
    // 重写初始化方法
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // 将四个 Label 粘贴到屏幕上
        [self.contentView addSubview:({
                    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 300, 50)];
                    // self.titleLabel.backgroundColor = [UIColor redColor];
                    self.titleLabel.font = [UIFont systemFontOfSize:16];
                    // self.titleLabel.textColor = [UIColor blackColor];
                    self.titleLabel;
        })];
        
        [self.contentView addSubview:({
                    self.sourceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 50, 20)];
                    // self.sourceLabel.backgroundColor = [UIColor redColor];
                    self.sourceLabel.font = [UIFont systemFontOfSize:12];
                    self.sourceLabel.textColor = [UIColor grayColor];
                    self.sourceLabel;
        })];
        
        [self.contentView addSubview:({
                    self.commendLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 80, 50, 20)];
                    // self.commendLabel.backgroundColor = [UIColor redColor];
                    self.commendLabel.font = [UIFont systemFontOfSize:12];
                    self.commendLabel.textColor = [UIColor grayColor];
                    self.commendLabel;
        })];
        
        [self.contentView addSubview:({
                    self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 80, 50, 20)];
                    // self.timeLabel.backgroundColor = [UIColor redColor];
                    self.timeLabel.font = [UIFont systemFontOfSize:12];
                    self.timeLabel.textColor = [UIColor grayColor];
                    self.timeLabel;
        })];
        
        
        [self.contentView addSubview:({
            self.rightimageView = [[UIImageView  alloc] initWithFrame:CGRectMake(300, 15, 70, 70)];
            self.rightimageView.backgroundColor = [UIColor greenColor];
            self.rightimageView;
            
        })];

    }
    return self;
}
    
- (void)layoutTableViewCell{
    self.textLabel.text = @"极客时间IOS开发";
    
    self.sourceLabel.text = @"极客时间";
    // 设置按钮距离自适应
    [self.sourceLabel sizeToFit];
    
    self.commendLabel.text = @"886条评论";
    [self.commendLabel sizeToFit];
    // 设置 左边距，右边距
    self.commendLabel.frame = CGRectMake(self.sourceLabel.frame.origin.x + self.sourceLabel.frame.size.width + 15, self.sourceLabel.frame.origin.y, self.commendLabel.frame.size.width, self.commendLabel.frame.size.height);
    
    self.timeLabel.text = @"3秒前";
    [self.timeLabel sizeToFit];
    self.timeLabel.frame = CGRectMake(self.commendLabel.frame.origin.x + self.commendLabel.frame.size.width + 15, self.commendLabel.frame.origin.y, self.timeLabel.frame.size.width, self.timeLabel.frame.size.height);
    
    self.rightimageView.image = [UIImage imageNamed:@"Assets/nav_index.png"];

}

@end
