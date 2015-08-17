//
//  CreateArrayHW.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/14/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CreateArrayHW.h"
#import "Students.h"
@interface CreateArrayHW ()

@end

@implementation CreateArrayHW

- (void)viewDidLoad {
    [super viewDidLoad];
    Students *a=[[Students alloc] init:@"Wayne Rooney" and:@"01" ];
    Students *b=[[Students alloc] init:@"Chicharito" and:@"02" ];
    Students *c=[[Students alloc] init:@"Pitroipa" and:@"03" ];
    
    Students *x=[[Students alloc] init:@"Wayne Rooney" and:@"01"];
    
    NSArray *arr=@[a,b,c];
    if ([arr containsObject:x]) { // So sanh thuoc tinh cua phan tu
        NSLog(@"have contains");
    }else{
        NSLog(@"Not contains");
    }
    NSLog(@"We find Wayne Rooney at %ld",[arr indexOfObject:x]);// Tim vi tri trong mang
    
    if([arr indexOfObjectIdenticalTo:x]==NSNotFound){  // So sanh thuoc tinh vs dia chi nho
        NSLog(@"We can not find");
    }else{
        NSLog(@"We find");
    }
}


@end
