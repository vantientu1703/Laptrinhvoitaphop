//
//  Students.h
//  NSArray
//
//  Created by Văn Tiến Tú on 8/14/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Students : NSObject
@property (nonatomic,strong) NSString* fullName;
@property (nonatomic,strong) NSString* studentID;
-(instancetype) init: (NSString*) fullName and:(NSString*) studentID;
-(void) sayYourname;
@end
