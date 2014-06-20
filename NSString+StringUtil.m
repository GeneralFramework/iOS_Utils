//
//  NSString+StringUtil.m
//  volume
//
//  Created by  李楠 on 13-3-2.
//  Copyright (c) 2013年 liuruiguo. All rights reserved.
//

#import <CommonCrypto/CommonDigest.h>
#import "NSString+StringUtil.h"
#import "JSONKit.h"

@implementation NSString (StringUtil)

-(NSString *) toMD5String {
    const char *original_str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
        [hash appendFormat:@"%02X", result[i]];
    return [hash lowercaseString];
}

 //截取字符串前后空格

-(NSString *) trim {
    return [self stringByTrimmingCharactersInSet:
            [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(id) parseFromJSONString {
    return [self objectFromJSONString];
}


@end
