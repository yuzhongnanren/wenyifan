//
//  UserViewController.m
//  wenyifan
//
//  Created by haodai on 15/12/8.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "UserViewController.h"
#import "UserHeadView.h"
#import "MainPageTableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "Novel.h"
#import "TitleForHead.h"

@interface UserViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation UserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = BackgroundColor;
    self.tableView.backgroundView  = nil;
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    UserHeadView *headView = LoadNibWithName(@"UserHeadView");
    self.tableView.tableHeaderView = headView;
    @weakify(self);
    headView.lookPhoto = ^(){
        @strongify(self);
    };
    headView.editMessage = ^(){
        @strongify(self);
    };
    headView.followMe = ^(){
        @strongify(self);
    };
    headView.meFollow = ^(){
        @strongify(self);
    };
    if (IOS7_SDK_AVAILABLE) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

#pragma mark -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
    
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainPageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 182.f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 64.f;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    TitleForHead *titleView = [[TitleForHead alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 74)];
    @weakify(self);
    titleView.block = ^(Type type) {
        @strongify(self);
        if (type == MY_NOVEL) {
//            [self ]
        }else {
            
        }
    };
    return titleView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
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
