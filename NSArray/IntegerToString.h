//
//  IntegerToString.h
//  NSArray
//
//  Created by Văn Tiến Tú on 8/19/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IntegerToString : NSObject
{
    NSString *phanChucTrieu,*phanTrieu,*phanTramNghin,*phanChunNghin,*phanTram,*phanChuc,*phanDonvi,*phanNghin;
    NSString *million,*thousand,*thousandhundred,*hundred;
    
}
-(void) xylySo: (int) a;
-(void) toString: (int) a;
@end
