//
//  Students.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/14/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "Students.h"
#import "ArrayC.h"
@implementation Students

-(instancetype) init:(NSString *)fullName and:(NSString *)studentID{
    if(self =[super init]){
        
        self.fullName = fullName;
        self.studentID = studentID;
    }
    return self;
}
-(BOOL) isEqual:(id)object{
    if([object isMemberOfClass: [Students class]]){
        Students* temp = (Students*) object;
        
        if([self.fullName isEqual: temp.fullName] &&
           [self.studentID isEqual: temp.studentID]){
            
            return  true;
        }else{
            return false;
        }
    }else{
        return false;
    }
    
}

-(void) sayYourname{
    NSLog(@"%@ - %@",self.fullName,self.studentID);
}

@end
