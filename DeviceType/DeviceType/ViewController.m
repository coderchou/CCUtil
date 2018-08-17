//
//  ViewController.m
//  DeviceType
//
//  Created by coderchou on 2018/8/13.
//  Copyright © 2018年 PleasantCoding. All rights reserved.
//

#import "ViewController.h"

#import "CCDeviceUtil.h"
#import "CCProcessInfoUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSLog(@"deviceModelType : %zd, deviceModelName : %@, deviceName :  %@",[CCDeviceUtil deviceModelType],[CCDeviceUtil deviceModelName],[CCDeviceUtil deviceName]);
    NSLog(@"%@",[CCDeviceUtil deviceInfoDictionary]);

    BOOL flag = [CCDeviceUtil isIPhoneX];
    NSLog(@"是否iPhone X : %d",flag );
    
    [CCProcessInfoUtil logProcessInfo];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
