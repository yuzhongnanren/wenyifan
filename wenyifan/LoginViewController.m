//
//  LoginViewController.m
//  wenyifan
//
//  Created by haodai on 15/12/17.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "LoginViewController.h"
#import "ZYTextField.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet ZYTextField *tel;
@property (weak, nonatomic) IBOutlet ZYTextField *code;
@property (weak, nonatomic) IBOutlet UIButton *codeBtn;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tel.enableKeyBoardHeight = YES;
    _tel.removeView = self.view;
    
    _code.enableKeyBoardHeight = YES;
    _code.removeView = self.view;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getCode:(id)sender {
    
}

- (IBAction)login:(id)sender {
    
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
