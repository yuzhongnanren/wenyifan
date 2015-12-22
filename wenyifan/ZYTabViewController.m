//
//  ZYTabViewController.m
//  EngineeringStructure
//
//  Created by haodai on 15/9/16.
//  Copyright (c) 2015年 haodai. All rights reserved.
//

#import "ZYTabViewController.h"
#import "ZYNavigationViewController.h"

#define kTagTabBarButton 8000

@interface ZYTabViewController ()

@end

@implementation ZYTabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib {
    [self setUp];
}


- (void)setUp {
    _tabBarButtons = [[NSMutableArray alloc] init];
    ZYNavigationViewController *nav1 = StoryBoardDefined(@"nav1");
    ZYNavigationViewController *nav3 = StoryBoardDefined(@"nav3");
    self.viewControllers = @[nav1,nav3];
    self.tabBar.hidden = YES;
    NSArray *unselectedImages = @[@"home_unselected",@"upload",@"user_unselected"];
    NSArray *pressImages = @[@"home_press",@"upload",@"user_press"];
    for (int i = 0; i < 3; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor = [UIColor whiteColor];
        btn.frame = CGRectMake(i*(SCREEN_WIDTH/3), self.tabBar.origin.y, SCREEN_WIDTH/3, 49);
        [btn setImage:mImageByName(unselectedImages[i]) forState:UIControlStateNormal];
        [btn setImage:mImageByName(pressImages[i]) forState:UIControlStateSelected];
        btn.tag = kTagTabBarButton + i;
        [btn addTarget:self action:@selector(touchTabBar:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        [_tabBarButtons addObject:btn];
    }
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, self.tabBar.origin.y, SCREEN_WIDTH, 0.5)];
    line.backgroundColor = [UIColor hexStringToColor:@"dddddd"];
    [self.view addSubview:line];
    [self touchTabBar:_tabBarButtons[0]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchTabBar:(UIButton*)sender {
    if (sender.tag != kTagTabBarButton + 1) {
        for (int i = 0; i < 3; i++) {
            UIButton *btn = (UIButton*)[self.view viewWithTag:kTagTabBarButton+i];
            btn.selected = NO;
        }
        sender.selected = YES;
    }
    switch (sender.tag - kTagTabBarButton) {
        case 0:
            self.selectedIndex = 0;
            break;
        case 1:
            [self presentToPublishController];
            break;
        case 2:
            self.selectedIndex = 1;
            break;
        default:
            break;
    }
}

- (void)presentToPublishController {
    ZYNavigationViewController *nav2 = StoryBoardDefined(@"nav2");
    [self presentViewController:nav2 animated:YES completion:NULL];
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
