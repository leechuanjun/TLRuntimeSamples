//
//  ViewController.m
//  TLRuntimeMessage
//
//  Created by lichuanjun on 17/3/2.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#import "ViewController.h"
#import "Message.h"
#import "NSObject+AssociatedObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Message *message = [Message new];
    [message sendMessage:@"Sam Lau"];
    
    NSObject *objc = [NSObject new];
    objc.associatedObject = @"Extend Category";
    NSLog(@"associatedObject is = %@", objc.associatedObject);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
