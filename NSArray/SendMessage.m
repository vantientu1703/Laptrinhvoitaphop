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
    Students *e=[[Students alloc] init:@"Ronaldo" and:@"07"];
    Students *f=[[Students alloc] init:@"Messi" and:@"10"];
    Students *g=[[Students alloc] init:@"Zidane" and:@"12"];
    Students *h=[[Students alloc] init:@"Ramos" and:@"9"];
    Students *i=[[Students alloc] init:@"Puyon" and:@"20"];
    Students *j=[[Students alloc] init:@"Rique" and:@"22"];
    Students *k=[[Students alloc] init:@"Thiago" and:@"13"];
    Students *l=[[Students alloc] init:@"Silva" and:@"33"];
    Students *m=[[Students alloc] init:@"Toto" and:@"11"];
    Students *n=[[Students alloc] init:@"Ronanhinho" and:@"29"];
    Students *o=[[Students alloc] init:@"Spring" and:@"25"];
    
    
    NSArray *array;
    array = @[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o];
    //NSArray *arr = @[@"s",@"g",@"f"];
    
    //NSLog(@"%d",index);
    
    NSMutableArray *arrMutable = [[NSMutableArray alloc] init];
    int dem = 11;
    
    while (dem > 0) {
        
        int index = arc4random_uniform(15);
        
        if (![arrMutable containsObject:array[index]]) {
            
            [arrMutable addObject:array[index]];
            dem--;
        }
    }
    Students  *x=[[Students alloc] init:@"Neymar" and:@"02"];

    if ([c isEqual: x]) {
        NSLog(@"Same");
    } else {
        NSLog(@"Not same");
    }
    //[array makeObjectsPerformSelector:@selector(sayYourname)];
    
    [arrMutable enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj respondsToSelector:@selector(sayYourname)]) {
            
            [obj sayYourname];
        }else{
            NSLog(@"Not Object");
            
        }
    }];
    
}

@end
