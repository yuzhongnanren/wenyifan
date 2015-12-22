//
//  PublishViewController.m
//  wenyifan
//
//  Created by haodai on 15/12/9.
//  Copyright (c) 2015年 zhouyong. All rights reserved.
//

#import "PublishViewController.h"
#import "UITextView+Placeholder.h"
@interface PublishViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIImageView *pic;

@end

@implementation PublishViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ViewBorderRadius(_textView, 5, 1, mCommonColor);
    _textView.placeholder = @"请输入您要写的文字...";
    _textView.font = [UIFont systemFontOfSize:14];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePic:(id)sender {
    
}

- (IBAction)submit:(id)sender {
    
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
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
