//
//  FormValidateUtil.m
//  volume
//
//  Created by 123 on 13-3-7.
//  Copyright (c) 2013年 liuruiguo. All rights reserved.
//

#import "FormValidateUtil.h"

@implementation FormValidateUtil

+(BOOL) isAccountVerify:(NSString*) account{
    if(ISNULLSTR(account)) {
        return NO;
    }
    NSString * patternString = @"^([a-zA-Z0-9_.\u4e00-\u9fa5]{6,16})+$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", patternString];
    return ([regextest evaluateWithObject:account] == YES);
}


+(BOOL) isPasswordVerify:(NSString*) password{
    if(ISNULLSTR(password)) {
        return NO;
    }
    NSString * patternString = @"^([a-zA-Z0-9_-`~!@#$%^&*()+\\|\\\\=,./?><\\{\\}\\[\\]]{6,16})+$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", patternString];
    return ([regextest evaluateWithObject:password] == YES);
}

+(BOOL) isMobilePhoneVerify:(NSString*) mobileNO{
    if(ISNULLSTR(mobileNO)) {
        return NO;
    }
    NSString * patternString = @"^1[3|5|8][0-9]{9}$";
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", patternString];
    return ([regextest evaluateWithObject:mobileNO] == YES);
}

+(BOOL) isEmailVerify:(NSString *)email
{
    if (ISNULLSTR(email)) {
        return NO;
    }  
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return ([emailTest evaluateWithObject:email] == YES);
    
    
}

@end
