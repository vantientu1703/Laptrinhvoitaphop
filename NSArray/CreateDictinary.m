//
//  CreateDictinary.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/29/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CreateDictinary.h"

@interface CreateDictinary ()

@end

@implementation CreateDictinary

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *data = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"playlist" ofType:@"plist"]];
    
    NSLog(@"%@",data);
    
    NSMutableArray *arrA = [[NSMutableArray alloc] init];
    
    [arrA addObject:[data allKeys]];
    NSLog(@"arrA about %@",arrA);
    
}


@end
