//
//  AES256.h
//  iOS_AES
//
//  Created by Ying on 2018/9/6.
//  Copyright © 2018 cong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AES256 : NSObject
+ (NSString *)encrypt:(NSString *)string;
+ (NSString *)decrypt:(NSString *)string;
@end

NS_ASSUME_NONNULL_END
