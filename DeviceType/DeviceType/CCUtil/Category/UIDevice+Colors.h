//
//  UIDevice+Colors.h
//  DeviceColorsDemo
//
//  Created by Boris Bügling on 19.10.13.
//  Copyright (c) 2013 Boris Bügling. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 源码来自 https://github.com/neonichu/BBUDeviceColors
 获取手机机身的外壳颜色, 访问 UIDevice 私有api. 审核会被拒
 */
@interface UIDevice (Colors)

-(UIColor*)bbu_enclosureColor; //机身外壳背景色
-(UIColor*)bbu_frontColor;     //机身外壳前景色

@end
