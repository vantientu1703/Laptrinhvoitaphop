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


-(void) array{
    int a[10];
    printf("Mang luc dau: ");
    for(int i = 0; i < 10; i++){
        a[i] = i ;
        printf("%d ",a[i]);
    }
    printf("\n");
    int tmp;
    printf("Mang sau khi sap xep: ");
    for(int i = 0; i < 10; i++){
        
        for(int j = i+1;j < 10; j++){
            
            if (a[i] > a[j]) {
                
                tmp = a[i];
                a[i] = a[j];
                a[j] =tmp;
            }
        }
    }
    for (int i = 0; i < 10; i++) {
        printf("%d ",a[i]);
    }
    
}
-(void) sapxep{
    int a[8][8],k=64;
    printf("Ma tran A: \n");
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            
            a[i][j] = k--;
            printf("%d ",a[i][j]);
        }
        printf("\n");
    }
    
    // Sap xep tang dan:
    
    int tmp;
    
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            for (int k = j+1 ; k < 8; k++) {
                
                if (a[i][j] > a[i][k]) {
                    
                    tmp = a[i][j];
                    a[i][j] = a[i][k];
                    a[i][k] = tmp;
                }
            }
        }
    }
    printf("Ma Tran A sau khi sap xem: \n");
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            
            printf("%d ",a[i][j]);
        }
        printf("\n");
    }
    
}

-(void) arrString{
    NSArray *arrString=@[@"tao",@"dua",@"lon",@"dsa"];
    
    NSLog(@"%@",arrString[0]);
    NSString *tmp;
    for (NSString *currenString in arrString ){
        
        NSLog(@"%@",currenString);
    }
}
@end
