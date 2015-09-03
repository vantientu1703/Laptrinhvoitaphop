//
//  NSMutableArrayCategory.m
//  NSArray
//
//  Created by Văn Tiến Tú on 9/4/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "NSMutableArrayCategory.h"
#import "NSMutableArray+Extend.h"
@interface NSMutableArrayCategory ()

@end

@implementation NSMutableArrayCategory

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *arr = [[NSMutableArray alloc] initWithArray: @[@1,@2,@3,@4]];
    
    [arr reverse];
    NSLog(@"%@",arr);
    
    NSString *str = [NSString stringWithFormat:@"I am happy to join with you today in what will go down in history as the greatest demonstration for freedom in the history of our nation Five score years ago a great American in whose symbolic shadow we stand today signed the Emancipation Proclamation This momentous decree came as a great beacon light of hope to millions of Negro slaves who had been seared in the flames of withering injustice. It came as a joyous daybreak to end the long night of their captivity But one hundred years later the Negro still is not free. One hundred years later the life of the Negro is still sadly crippled by the manacles of segregation and the chains of discrimination One hundred years later the Negro lives on a lonely island of poverty in the midst of a vast ocean of material prosperity One hundred years later the Negro is still languished in the corners of American society and finds himself an exile in his own land And so we've come here today to dramatize a shameful conditionIn a sense we've come to our nation's capital to cash a check When the architects of our republic wrote the magnificent words of the Constitution and the Declaration of Independence they were signing a promissory note to which every American was to fall heir This note was a promise that all men yes black men as well as white men would be guaranteed the unalienable Rights of Life Liberty and the pursuit of Happiness It is obvious today that America has defaulted on this promissory note insofar as her citizens of color are concerned Instead of honoring this sacred obligation America has given the Negro people a bad check a check which has come back marked insufficient funds"];
    
    NSArray *arr2 = [str componentsSeparatedByString:@" "];
    
    NSMutableArray *mang = [[NSMutableArray alloc] init];
    
    for (NSString *str in arr2){
        
        [mang addObject:str];
    }
    
    NSCountedSet *setCount = [[NSCountedSet alloc] initWithArray:mang];
    [self writeln:@"So lan xuat hien cac tu"];
    [self writeln:@"-----------"];
    [self writeln:@""];
    NSString *str1;
    for (id num in setCount) {
        
        str1 = [NSString stringWithFormat:@"%@  -  %lu",num,(unsigned long)[setCount countForObject:num]];
        [self writeln:str1];
        NSLog(@"%@",str1);
    }
    
    //NSLog(@"%@",mang);
}


@end
