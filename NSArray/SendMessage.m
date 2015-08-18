//
//  SendMessage.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/15/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "SendMessage.h"
#import "Students.h"
@interface SendMessage ()

@end

@implementation SendMessage
{
    NSArray *string;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Students *a=[[Students alloc] init:@"Wayne Rooney" and:@"10"];
    Students *b=[[Students alloc] init:@"Tom" and:@"09"];
    Students *c=[[Students alloc] init:@"Neymar" and:@"02"];
    Students *d=[[Students alloc] init:@"Torres" and:@"11"];
    
    NSArray *array=@[a,b,c,d,@3.14];
    
    Students  *x=[[Students alloc] init:@"Neymar" and:@"02"];
    
    if ([c isEqual: x]) {
        NSLog(@"Same");
    } else {
        NSLog(@"Not same");
    }
    //[array makeObjectsPerformSelector:@selector(sayYourname)];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj respondsToSelector:@selector(sayYourname)]) {
            
            [obj sayYourname];
        }else{
            NSLog(@"Not Object");
        }
    }];
    
}
-(int) xuly: (int) i{
    return i;

}

@end
