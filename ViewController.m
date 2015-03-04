//
//  ViewController.m
//  UISwitch创建和使用
//
//  Created by 陈家庆 on 15-3-4.
//  Copyright (c) 2015年 shikee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    self.navigationItem.title = @"UISwitch创建和使用";
    self.view.backgroundColor = [UIColor grayColor];
    
    UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(10, 100, 300, 50)];
    mySwitch.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:mySwitch];
    
    //设置开启颜色 图片
    mySwitch.onTintColor = [UIColor yellowColor];
    mySwitch.onImage = [UIImage imageNamed:@""];
    //设置关闭颜色 图片
    mySwitch.tintColor = [UIColor redColor];
    mySwitch.offImage = [UIImage imageNamed:@""];
    //设置圆形按钮颜色
    mySwitch.thumbTintColor = [UIColor purpleColor];
    
    //代码设置开启/关闭状态 设置YES或NO，是否使用animated动画效果：
    [mySwitch setOn:YES animated:YES];
    
    //获取UISwitch的开闭状态  注：默认关闭
    if (mySwitch.isOn) {
        NSLog(@"开启状态");
    }else{
        NSLog(@"关闭状态");
    }
    
    //添加动作事件
    [mySwitch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
}

- (void)switchChange:(id)sender{
    UISwitch *mySwitch = (UISwitch *)sender;
    if (mySwitch.isOn) {
        NSLog(@"开关开启");
    }else{
        NSLog(@"开关关闭");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
