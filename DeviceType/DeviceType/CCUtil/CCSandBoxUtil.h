//
//  CCSandBoxUtil.h
//  DeviceType
//
//  Created by coderchou on 2018/8/16.
//  Copyright © 2018年 PleasantCoding. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CCSandBoxDirectoryType) {
    CCSandBoxDirectoryTypeUnknow = 0,
    CCSandBoxDirectoryTypeBundle,   //bundle目录不支持创建文件夹
    CCSandBoxDirectoryTypeHome,
    CCSandBoxDirectoryTypeDocument,
    CCSandBoxDirectoryTypeLibrary,
    CCSandBoxDirectoryTypePreference,
    CCSandBoxDirectoryTypeCache,
    CCSandBoxDirectoryTypeTmp,
};

/**
 沙盒工具
 */
@interface CCSandBoxUtil : NSObject

/**
 bundle目录
 相对路径 : /
 */
+ (NSString *)bundlePath;


/**
 沙盒根目录
 相对路径 : /
 */
+ (NSString *)homePath;

/**
 文档目录 : 只有用户创建的，并且不能被App重现的文档、数据，才应该被保存在“/Documents”路径下。会被iTunes同步。
 相对路径 : /Documents
 */
+ (NSString *)documentPath;


/**
 Library目录 : 用来存放默认设置或其它状态信息，除Caches子目录之外的文件会被iTunes同步。
 相对路径     : /Library
 */
+ (NSString *)libraryPath;


/**
 配置目录 : 使用NSUserDefaults写的设置数据都会保存到该目录下的一个plist文件中，会被iTunes同步
 相对路径 : /Library/Preference
 */
+ (NSString *)preferencePath;


/**
 缓存目录 : 可以重新产生、下载的数据可以放在“/Library/Caches”目录下，如用于缓存的数据库文件。不会被iTunes同步
 相对路径 : /Library/Caches
 */
+ (NSString *)cachePath;

/**
 临时目录 : 用来存放应用再次启动时不需要的临时文件，该目录下的东西随时可能被系统清理掉，不会被iTunes同步。
 相对路径 : /tmp
 */
+ (NSString *)tmpPath;



/**
 根据directoryType,获取路径
 */
+ (NSString *)pathForDirectoryType:(CCSandBoxDirectoryType)directoryType;


/** 在沙盒目录下创建文件夹便捷方法 */
+ (NSString *)mkdir:(NSString *)absolutePath;
+ (NSString *)rmdir:(NSString *)absolutePath;

+ (NSString *)mkdir:(NSString *)relativePath directoryType:(CCSandBoxDirectoryType)directoryType;
+ (NSString *)rmdir:(NSString *)relativePath directoryType:(CCSandBoxDirectoryType)directoryType;



/**
 important tips :
 根据官方文档“File System Programming Guide”(https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html#//apple_ref/doc/uid/TP40010672-CH2-SW1)
 可以整理出两个系统可能会清除的目录：（在储存空间不够时）
 
 1.Library/Caches/
 2.tmp/
 所以，像App下载的歌曲等资源文件是不能放在上面两个目录中的。
 
 为了保险起见，重要的文件最靠谱的还是放在/Documents中，并且通过设置，不让iCloud备份。
 
 Apple已经提供了相应的函数，如下（iOS 5.1及以后的版本）：
 
 - (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL {
 assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
 
 NSError *error = nil;
 BOOL success = [URL setResourceValue: [NSNumber numberWithBool: YES]
 forKey: NSURLIsExcludedFromBackupKey error: &error];
 if(!success){
 NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
 }
 return success;
 }

 */

@end
