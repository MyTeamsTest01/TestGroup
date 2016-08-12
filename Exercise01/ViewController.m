//
//  ViewController.m
//  Exercise01
//
//  Created by mc on 16/6/29.
//  Copyright © 2016年 mc. All rights reserved.
//

#import "ViewController.h"
#define kMainBounds [UIScreen mainScreen].bounds
#define kMainWidth  [UIScreen mainScreen].bounds.size.width
#define kMainHeight [UIScreen mainScreen].bounds.size.height
#define kH  (kMainHeight-350-14)/8
#define kBottomView  self.bottomView.frame.size
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSArray *names = @[@"添加开票",@"添加开票",@"添加开票",@"添加开票",@"添加开票",@"添加开票",@"添加开票",@"添加开票",];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, kMainWidth, kMainHeight-350)];
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.backgroundColor = [UIColor grayColor];
    
    for (int i = 0; i<names.count; i++) {

        UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(0, (40+2)*i, kMainWidth, 40)];
        textField.placeholder = names[i];
        textField.backgroundColor = [UIColor whiteColor];
        [scrollView addSubview:textField];
        
    }
    
    
    scrollView.contentSize = CGSizeMake(kMainWidth, 40*names.count+14);
    scrollView.bounces = NO;
    
    [self.view addSubview:scrollView];
    
}












- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
