//
//  NSDictionary+ToJson.m
//  Coupon
//
//  Created by  李楠 on 13-3-2.
//  Copyright (c) 2013年  李楠. All rights reserved.
//

#import "NSDictionary+ToJson.h"
#import "JSONKit.h"

@implementation NSDictionary (ToJson)

-(NSData *) toJson {
    return [self JSONData];
}
-(NSString *) toJsonString {
   
    return [self JSONString];
}

@end
