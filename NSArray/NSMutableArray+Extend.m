//
//  NSMutableArray+Extend.m
//  NSArray
//
//  Created by Văn Tiến Tú on 9/4/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "NSMutableArray+Extend.h"

@implementation NSMutableArray (Extend)

-(void) reverse{
    
    if (self.count < 2) {
        
        return;
    }else{
        
        for (int i = 0; i < self.count/2; i++) {
            
            [self exchangeObjectAtIndex:i withObjectAtIndex:self.count - i - 1];
        }
    }
}
@end
