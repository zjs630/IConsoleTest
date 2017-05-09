//
//  MyTestView.m
//  IConsoleTest
//
//  Created by JingshunZhang on 2017/5/9.
//  Copyright © 2017年 JingshunZhang. All rights reserved.
//

#import "MyTestView.h"
#import "iConsole.h"

@implementation MyTestView

- (void)testMethod{
    //3秒后抛出异常
    [self performSelector:@selector(abc) withObject:nil afterDelay:3];
    
    [iConsole show];
}


@end
