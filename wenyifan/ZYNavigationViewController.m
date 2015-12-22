//
//  ZYNavigationViewController.m
//  EngineeringStructure
//
//  Created by haodai on 15/9/16.
//  Copyright (c) 2015年 haodai. All rights reserved.
//

#import "ZYNavigationViewController.h"

@interface ZYNavigationViewController ()

@end

@implementation ZYNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.barTintColor = [UIColor whiteColor];
     NSDictionary *attributes=[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName,
                              [UIFont fontWithName:@"TimesNewRomanPSMT" size:18], NSFontAttributeName, nil];
    [[UINavigationBar appearance] setTitleTextAttributes:attributes];
    
    
    //移除黑线
//    [[UINavigationBar appearance] setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
//    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
