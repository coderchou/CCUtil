//
//  CCSandBoxUtil.m
//  DeviceType
//
//  Created by coderchou on 2018/8/16.
//  Copyright © 2018年 PleasantCoding. All rights reserved.
//

#import "CCSandBoxUtil.h"

@implementation CCSandBoxUtil

+ (NSString *)bundlePath {
    return [[NSBundle mainBundle] bundlePath];
}

+ (NSString *)homePath {
    return NSHomeDirectory();
}

+ (NSString *)documentPath {
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

+ (NSString *)libraryPath {
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

+ (NSString *)preferencePath {
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingFormat:@"/Preference"];
}

+ (NSString *)cachePath {
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

+ (NSString *)tmpPath {
    return NSTemporaryDirectory();
    
}


+ (NSString *)pathForDirectoryType:(CCSandBoxDirectoryType)directoryType {
    switch (directoryType) {
        case CCSandBoxDirectoryTypeUnknow:
            return @"";
            
        case CCSandBoxDirectoryTypeBundle:
            return [self bundlePath];
            
        case CCSandBoxDirectoryTypeHome:
            return [self homePath];
            
        case CCSandBoxDirectoryTypeDocument:
            return [self documentPath];
            
        case CCSandBoxDirectoryTypeLibrary:
            return [self libraryPath];
            
        case CCSandBoxDirectoryTypePreference:
            return [self preferencePath];
            
        case CCSandBoxDirectoryTypeCache:
            return [self cachePath];
            
        case CCSandBoxDirectoryTypeTmp:
            return [self tmpPath];
            
        default:
            return @"";
    }
    
    return @"";
}

+ (NSString *)mkdir:(NSString *)absolutePath {
    if (absolutePath.length == 0) {
        return @"Unable to create empty directory!!!";
    }
    
    if (![absolutePath hasPrefix:@"/"]) {
        return @"absolutePath is illegal!!!";
    }
    
    if ( NO == [[NSFileManager defaultManager] fileExistsAtPath:absolutePath] )
    {
        NSError *error;
        [[NSFileManager defaultManager] createDirectoryAtPath:absolutePath
                                  withIntermediateDirectories:YES
                                                   attributes:nil
                                                        error:&error];
        if (error.localizedDescription.length) {
            return [NSString stringWithFormat:@"%@",error.localizedDescription];
        }
        return [NSString stringWithFormat:@"create directory success!   path : %@",absolutePath];

    } else {
        return [NSString stringWithFormat:@"directory has existed!    path : %@",absolutePath];
    }
    
}


+ (NSString *)rmdir:(NSString *)absolutePath {
    if (absolutePath.length == 0) {
        return @"Unable to remove empty directory!!!";
    }
    
    if (![absolutePath hasPrefix:@"/"]) {
        return @"absolutePath is illegal!!!";
    }
    
    if ( YES == [[NSFileManager defaultManager] fileExistsAtPath:absolutePath] )
    {
        NSError *error;
        [[NSFileManager defaultManager] removeItemAtPath:absolutePath error:&error];
        
        if (error.localizedDescription.length) {
            return [NSString stringWithFormat:@"%@",error.localizedDescription];
        }
        return [NSString stringWithFormat:@"remove directory success!   path : %@",absolutePath];

    } else {
        return [NSString stringWithFormat:@"directory doesn't exist!    path : %@",absolutePath];
    }
    
}


+ (NSString *)mkdir:(NSString *)relativePath directoryType:(CCSandBoxDirectoryType)directoryType {
    
    if (relativePath.length == 0) {
        return @"Unable to create empty directory!!!";
    }
    
    NSMutableString *absolutePath = [[NSMutableString alloc] init];
    switch (directoryType) {
        case CCSandBoxDirectoryTypeUnknow:
            return @"Unable to create directory, directoryType is unkown!!!";
            
        case CCSandBoxDirectoryTypeBundle:
            return @"Unable to create directory in main bundle!!!";
            
        case CCSandBoxDirectoryTypeHome:
            [absolutePath appendString:[self homePath]];
            break;
            
        case CCSandBoxDirectoryTypeDocument:
            [absolutePath appendString:[self documentPath]];
            break;
            
        case CCSandBoxDirectoryTypeLibrary:
            [absolutePath appendString:[self libraryPath]];
            break;
            
        case CCSandBoxDirectoryTypePreference:
            [absolutePath appendString:[self preferencePath]];
            break;
            
        case CCSandBoxDirectoryTypeCache:
            [absolutePath appendString:[self cachePath]];
            break;
            
        case CCSandBoxDirectoryTypeTmp:
            [absolutePath appendString:[self tmpPath]];
            break;
            
        default:
            return @"Unable to create directory, directoryType is unkown!!!";
    }
    
    if ([relativePath hasPrefix:@"/"]) {
        [absolutePath appendString:relativePath];
    } else {
        [absolutePath appendFormat:@"/%@",relativePath];
    }
    
    return [self mkdir:absolutePath];
}


+ (NSString *)rmdir:(NSString *)relativePath directoryType:(CCSandBoxDirectoryType)directoryType {
    
    if (relativePath.length == 0) {
        return @"Unable to remove empty directory!!!";
    }
    
    NSMutableString *absolutePath = [[NSMutableString alloc] init];
    switch (directoryType) {
        case CCSandBoxDirectoryTypeUnknow:
            return @"Unable to remove directory, directoryType is unkown!!!";
            
        case CCSandBoxDirectoryTypeBundle:
            return @"Unable to remove directory in main bundle!!!";
            
        case CCSandBoxDirectoryTypeHome:
            [absolutePath appendString:[self homePath]];
            break;
            
        case CCSandBoxDirectoryTypeDocument:
            [absolutePath appendString:[self documentPath]];
            break;
            
        case CCSandBoxDirectoryTypeLibrary:
            [absolutePath appendString:[self libraryPath]];
            break;
            
        case CCSandBoxDirectoryTypePreference:
            [absolutePath appendString:[self preferencePath]];
            break;
            
        case CCSandBoxDirectoryTypeCache:
            [absolutePath appendString:[self cachePath]];
            break;
            
        case CCSandBoxDirectoryTypeTmp:
            [absolutePath appendString:[self tmpPath]];
            break;
            
        default:
            return @"Unable to remove directory, directoryType is unkown!!!";
    }
    
    if ([relativePath hasPrefix:@"/"]) {
        [absolutePath appendString:relativePath];
    } else {
        [absolutePath appendFormat:@"/%@",relativePath];
    }

    return [self rmdir:absolutePath];
}



@end
