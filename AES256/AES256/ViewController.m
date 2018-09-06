//
//  ViewController.m
//  AES256
//
//  Created by Ying on 2018/9/6.
//  Copyright © 2018 Ying. All rights reserved.
//

#import "ViewController.h"

#import "AES256.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSString *encryptStr = [AES256 encrypt:@"中华老字号"];
    NSLog(@"加密: %@", encryptStr);
    
    NSString *decryptStr = [AES256 decrypt:encryptStr];
    NSLog(@"解密: %@" ,decryptStr);
}


@end
