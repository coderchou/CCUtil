//
//  CCProcessInfoUtil.m
//  DeviceType
//
//  Created by coderchou on 2018/8/15.
//  Copyright © 2018年 PleasantCoding. All rights reserved.
//

#import "CCProcessInfoUtil.h"

@implementation CCProcessInfoUtil


+ (void)logProcessInfo {
    
    NSLog(@"=========================== processInfo ============================");
    
    //创建一个NSProcessInfo对象，表示当前进程
    NSProcessInfo *processInfo = [NSProcessInfo processInfo];
    
    //获取运行该进程的参数
    NSArray *arr = [processInfo arguments];
    NSLog(@"运行该程序的参数为：%@", arr);
    //获取该进程的进程标示符
    NSLog(@"该程序的进程标示符(PID)为：%d", [processInfo processIdentifier]);
    //获取该进程的进程名
    NSLog(@"该程序的进程名为：%@", [processInfo processName]);
    //设置该进程的新进程名
    [processInfo setProcessName:@"test"];
    NSLog(@"该程序的新进程名为：%@", [processInfo processName]);
    //获取运行该进程的系统的环境变量, 打印格式不能有中文,不然打印信息不全.
    NSLog(@"environment: %@", [processInfo environment]);  //SIMULATOR_MODEL_IDENTIFIER
    //获取运行该进程的主机名
    NSLog(@"运行该进程的主机名为：%@", [processInfo hostName]);

    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    //获取运行该进程的操作系统
    NSLog(@"运行该进程所在的操作系统为：%ld", (unsigned long)[processInfo operatingSystem]);
    //获取运行该进程的操作系统的版本
    NSLog(@"运行该进程所在的操作系统名为：%@", [processInfo operatingSystemName]);
#pragma clang diagnostic pop

    //获取运行该进程的操作系统的版本
    NSLog(@"运行该进程所在的操作系统的版本为：%@", [processInfo operatingSystemVersionString]);
    //获取运行该进程的系统的物理内存
    NSLog(@"运行该进程的系统的物理内存为：%lld", [processInfo physicalMemory]);
    //获取运行该进程的系统的处理器数量
    NSLog(@"运行该进程的系统的处理器数量为：%lu", (unsigned long)[processInfo processorCount]);
    //获取运行该进程的系统的处于激活状态的处理器数量
    NSLog(@"运行该进程的系统的处于激活状态的处理器数量为：%lu", (unsigned long)[processInfo activeProcessorCount]);
    //获取运行该进程的系统已运行的时间
    NSLog(@"运行该进程的系统的已运行时间为：%f", [processInfo systemUptime]);
    //全球唯一标识
    NSLog(@"globallyUniqueString=%@",[[NSProcessInfo processInfo] globallyUniqueString]);

    NSLog(@"=========================== processInfo ============================");
}



@end
