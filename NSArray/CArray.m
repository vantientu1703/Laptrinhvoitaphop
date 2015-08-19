//
//  CArray.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/18/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CArray.h"

@interface CArray ()

@end

@implementation CArray

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self array];
    [self sapxep];
    [self arrString];
}


-(void) sapxep{
    
    //NSArray *arr[64];
    int a[8][8],k=64,b[64],t=0;
    printf("Ma tran A: \n");
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            
            a[i][j] = k--;
            b[t]=a[i][j];
            t++;
            printf("%d ",a[i][j]);
        }
        //printf("\n");
    }
    printf("\n");
    
    int tmp;
    for (int i = 0; i < 64; i++) {
        for (int j = i+1; j < 64; j++) {
            
            if (b[i] > b[j]) {
                
                tmp = b[i];
                b[i] = b[j];
                b[j] = tmp;
            }
        }
    }
    
    for (int i = 0; i < 64; i++) {
        printf("%d ",b[i]);
    }
    printf("\n");
}

-(void) arrString{
    
    NSMutableArray *iostutorialguide = [[NSMutableArray alloc]initWithObjects:@"dao", @"an",@"tung",@"quyen",nil];
    
    NSMutableArray *iostutorialguide_sorted = [[NSMutableArray alloc]init];
    
    [iostutorialguide_sorted  addObjectsFromArray: [iostutorialguide sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)]];
    
    
    NSLog(@"Sorted Array = %@", iostutorialguide_sorted);
    
}
@end
