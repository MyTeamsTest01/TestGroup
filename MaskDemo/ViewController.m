//
//  ViewController.m
//  MaskDemo
//
//  Created by mc on 16/8/11.
//  Copyright © 2016年 Lindon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong,nonatomic) CALayer *maskLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *grayImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    grayImageView.image = [UIImage imageNamed:@"jobs_gray"];
    [self.view addSubview:grayImageView];
    
    UIImageView *colorImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    colorImageView.image = [UIImage imageNamed:@"jobs_color"];
    
    [self.view addSubview:colorImageView];
    UIImage *maskImage = [UIImage imageNamed:@"mask_image"];
//    UIImageView *maskImageView = [[UIImageView alloc]init];
//    maskImageView.bounds = CGRectMake(0, 0, maskImage.size.width, maskImage.size.height);
//    maskImageView.center = self.view.center;
//    
//    [self.view addSubview:maskImageView];
    
    self.maskLayer = [[CALayer alloc]init];
    self.maskLayer.frame = CGRectMake(0, 0, maskImage.size.width, maskImage.size.height);
    self.maskLayer.contents = (__bridge id _Nullable)(maskImage.CGImage);
    self.maskLayer.position = self.view.center;
    colorImageView.layer.mask = self.maskLayer;
    
    
    
    
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    [CATransaction setDisableActions:YES];
    
    self.maskLayer.position = point;
    
    
    
    
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
