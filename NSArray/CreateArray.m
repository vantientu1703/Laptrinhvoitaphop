//
//  CreateArray.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/14/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CreateArray.h"

@interface CreateArray ()

@end

@implementation CreateArray

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self writeln:@"Hello world,I'm Tu"];
    [self array];
    [self dataArray];
}
-(void) array{
    NSArray* arr=@[@"Name",@"Job"];
    NSLog(@"%@",arr);
}
-(void) dataArray{
    NSArray *arr=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]]; // Lay giu lieu tu file data.plist
    NSLog(@"%@",arr);
    
    for(NSDictionary* Item in arr){ // duyet tung phan tu trong mang arr
        NSLog(@"%@ - %@",Item[@"name"],Item[@"job"]);
    }
}
@end
