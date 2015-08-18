//
//  CreateCArray.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/19/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CreateCArray.h"
#import "IntegerToString.h"
@interface CreateCArray ()

@end

@implementation CreateCArray

- (void)viewDidLoad {
    [super viewDidLoad];
    
    IntegerToString *integer=[[IntegerToString alloc] init];
    int arrInteger[10]= {10,11,12,0,123,3456,23445,123456,2345678,12345678};
    
    
    for (int i = 0; i < 10; i++) {
        
            [integer xylySo:arrInteger[i]];
            [integer toString:arrInteger[i]];
        }
}
@end

