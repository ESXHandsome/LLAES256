//
//  NSData+AES256.h
//  iOS_AES
//
//  Created by Ying on 2018/9/6.
//  Copyright © 2018 cong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (AES256)

- (NSData *)AES256Encrypt;
- (NSData *)AES256Decrypt;



@end

NS_ASSUME_NONNULL_END
