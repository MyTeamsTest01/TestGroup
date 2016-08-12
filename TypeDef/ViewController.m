//
//  ViewController.m
//  TypeDef
//
//  Created by mc on 16/8/5.
//  Copyright © 2016年 Lindon. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    NOBuy = 0,
    BuyNoOut,
    Out
    
}OrderState;


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (assign,nonatomic) OrderState orderState;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (self.orderState == NOBuy) {
        NSLog(@"未订购");
    }else if (self.orderState == BuyNoOut) {
        NSLog(@"已订购未到期");
    }else {
        NSLog(@"已到期");
        
    }
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.bounces = NO;
    
    //[tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    
    [self.view addSubview:tableView];
    
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        
        
    }
    
    cell.backgroundColor = [UIColor orangeColor];
    
    cell.textLabel.text = @"123";
    cell.detailTextLabel.text = @"789";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    
    
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
