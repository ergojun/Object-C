//
//  GTNormalTableViewCell.m
//  SampleApp
//
//  Created by TJ1998 on 2023/3/20.
//

#import "GTNormalTableViewCell.h"

@interface GTNormalTableViewCell ()

// 创建 label
@property(nonatomic, strong, readwrite) UILabel *titleLabel;
@property(nonatomic, strong, readwrite) UILabel *sourceLabel;
@property(nonatomic, strong, readwrite) UILabel *commentLabel;
@property(nonatomic, strong, readwrite) UILabel *timeLabel;

@end

@implementation GTNormalTableViewCell

    // 重写他的初始化方法
    - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
        self = [ super initWithStyle:style reuseIdentifier:reuseIdentifier];
        if ( self ){
            // 初始化时，将 UITabelView 粘贴到 UIView 的 contantView 中
            [self.contentView addSubview:({
                self.titleLabel = [[UILabel alloc] initWithFrame: CGRectMake(20, 15, 300, 50)];
                self.titleLabel.backgroundColor = [UIColor redColor];
                // 设置系统字体大小
                self.titleLabel.font = [UIFont systemFontOfSize:16];
                self.titleLabel.textColor = [UIColor grayColor];
                self.titleLabel;
            })];
            
            [self.contentView addSubview:({
                self.sourceLabel = [[UILabel alloc] initWithFrame: CGRectMake(20, 15, 300, 50)];
                self.sourceLabel.backgroundColor = [UIColor redColor];
                // 设置系统字体大小
                self.sourceLabel.font = [UIFont systemFontOfSize:12];
                self.sourceLabel.textColor = [UIColor grayColor];
                self.sourceLabel;
            })];
            
            [self.contentView addSubview:({
                self.commentLabel = [[UILabel alloc] initWithFrame: CGRectMake(20, 15, 300, 50)];
                self.commentLabel.backgroundColor = [UIColor redColor];
                // 设置系统字体大小
                self.commentLabel.font = [UIFont systemFontOfSize:12];
                self.commentLabel.textColor = [UIColor grayColor];
                self.commentLabel;
            })];
            
            [self.contentView addSubview:({
                self.timeLabel = [[UILabel alloc] initWithFrame: CGRectMake(20, 15, 300, 50)];
                self.timeLabel.backgroundColor = [UIColor redColor];
                // 设置系统字体大小
                self.timeLabel.font = [UIFont systemFontOfSize:12];
                self.timeLabel.textColor = [UIColor grayColor];
                self.timeLabel;
            })];
        }
        return self;
    }

- (void)layoutTableViewCell{
    self.titleLabel.text = @"极客时间";
    self.sourceLabel.text = @"1111";
    self.commentLabel.text = @"5";
    self.timeLabel.text = @"三分钟";

    
}

@end
