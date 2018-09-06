//
//  AES256.m
//  iOS_AES
//
//  Created by Ying on 2018/9/6.
//  Copyright © 2018 cong. All rights reserved.
//

#import "AES256.h"
#import "NSData+AES256.h"

@implementation AES256
/**加密*/
+ (NSString *)encrypt:(NSString *)string {
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataEncrypted = [data AES256Encrypt];
    NSString *strRecordEncrypted = [dataEncrypted base64EncodedStringWithOptions:NSUTF8StringEncoding];
    return strRecordEncrypted;
}

/**解密*/
+ (NSString *)decrypt:(NSString *)string{
    if([string containsString:@"\n"] || [string containsString:@"\t"])
    {
        string = [[string componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];
        string = [string stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    }
    NSData *keyData = [[NSData alloc] initWithBase64EncodedString:string options:0];
    NSData *dataDecrypted = [keyData AES256Decrypt];
    NSString *receivedDataDecryptString = [[NSString alloc]initWithData:dataDecrypted encoding:NSUTF8StringEncoding];
    return receivedDataDecryptString;
}


@end
