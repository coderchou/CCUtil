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

#import "UIDevice+Colors.h"

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
    
    if ([CCDeviceUtil isSimulator]) {
        self.view.backgroundColor = [UIColor whiteColor];
    } else {    //根据机身背景色设置view的颜色
        self.view.backgroundColor = [[UIDevice currentDevice] bbu_enclosureColor];
    }
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
