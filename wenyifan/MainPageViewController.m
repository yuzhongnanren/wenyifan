//
//  MainPageViewController.m
//  wenyifan
//
//  Created by haodai on 15/12/7.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "MainPageViewController.h"
#import "MainPageTableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "Novel.h"

@interface MainPageViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataSource;


@end

@implementation MainPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = BackgroundColor;
    self.tableView.backgroundView  = nil;
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    [self feachData];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)feachData {
    [[HTTPRequestManager manager] POST:@"" dictionary:@{} success:^(id responseObject) {
        
    } failure:^(NSError *error) {
        
    } view:self.view progress:YES];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainPageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 182.f;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
