//
//  CreateCArray.m
//  NSArray
//
//  Created by Văn Tiến Tú on 8/19/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CreateCArray.h"
//#import "IntegerToString.h"
@interface CreateCArray ()

@end

@implementation CreateCArray{
    NSString *phanChucTrieu,*phanTrieu,*phanTramNghin,*phanChunNghin,*phanTram,*phanChuc,*phanDonvi,*phanNghin;
    NSString *million,*thousand,*thousandhundred,*hundred;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //IntegerToString *integer=[[IntegerToString alloc] init];
    int arrInteger[10]= {10,11,12,0,123,3456,20045,123456,2345678,12000000};
    
    
    for (int i = 0; i < 10; i++) {
        
            [self xylySo:arrInteger[i]];
            [self toString:arrInteger[i]];
        }
}

-(void) xylySo: (int) a {
    
    NSArray *arrString=@[@"zero",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"nine",@"ten",@"eleven",@"twelve",@"thirteen",@"fourteen",@"fifteen",@"sixteen",@"seventeen",@"eighteen",@"nineteen",@"twelty"];
    
    NSArray *arrTens=@[@"",@"",@"twelty",@"thirty",@"forty",@"fifty",@"sixty",@"seventy",@"eighty",@"ninety"];
    
    million=@"million";
    hundred=@"hundred";
    thousand=@"thousand";
    thousandhundred=@"hundred";
    
    if (a <= 20 && a >= 0){
        
        NSLog(@"%d - %@",a,arrString[a]);
    }else{
        
        int chucTrieu,Trieu,tramNghin,chucNghin,Nghin,Tram,Chuc,donVi;
        chucTrieu=a/1000000;
        Trieu=chucTrieu%10;
        tramNghin=(a/100000)%10;
        chucNghin=(a/10000)%10;
        Nghin=(a/1000)%10;
        Tram=(a/100)%10;
        Chuc=(a/10)%10;
        donVi=a%10;
        
        if (chucTrieu>0&&chucTrieu<=20) {
            
            phanChucTrieu=arrString[chucTrieu];
            phanTrieu=arrTens[0];
            
        }else if(chucTrieu>20){
            
            phanChucTrieu=arrTens[chucTrieu/10];
            phanTrieu=arrString[Trieu];
        }
        //Tinh phan Nghin
        phanTramNghin=arrString[tramNghin];
        
        if (chucNghin>=2) {
            
            phanChunNghin=arrTens[chucNghin];
            phanNghin=arrString[Nghin];
            
        }else if(chucNghin==1){
            
            phanChunNghin=arrString[chucNghin*10+Nghin];
            phanNghin=arrTens[0];
            
        }else if(chucNghin==0 && Nghin!=0){
            
            phanChunNghin=arrTens[0];
            phanNghin=arrString[Nghin];
        }else if(phanChunNghin==0&& phanNghin==0){
            phanChunNghin=arrTens[0];
            phanNghin=arrTens[0];
        }
        if (Nghin==0) {
            
            phanNghin=arrTens[0];
        }
        
        if (tramNghin==0&&chucNghin==0&&Nghin==0) {
            
            phanNghin=arrTens[0];
            phanChunNghin=arrTens[0];
            phanTramNghin=arrTens[0];
            thousandhundred=@"";
            thousand=@"";
        }
        
        phanTram=arrString[Tram];
        
        if (Chuc>=2) {
            
            phanChuc=arrTens[Chuc];
            phanDonvi=arrString[donVi];
            
        }else if(Chuc==1){
            
            phanChuc=arrString[Chuc*10+donVi];
            phanDonvi=arrTens[0];
            
        }else if(Chuc==0 && donVi!=0){
            
            phanChuc=arrTens[0];
            phanDonvi=arrString[donVi];
        }else if(Chuc==0&& donVi==0){
            phanChuc=arrTens[0];
            phanDonvi=arrTens[0];
        }
        if (donVi==0) {
            
            phanDonvi=arrTens[0];
        }
        
        if (Tram==0&&Chuc==0&&donVi==0) {
            
            phanDonvi=arrTens[0];
            phanChuc=arrTens[0];
            phanTram=arrTens[0];
            hundred=@"";
        }
    }
}
-(void) toString: (int) a{
    NSString *str;
    if (a >= 1000000) {
       str = [NSString stringWithFormat:@"%d -  %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@",a,phanChucTrieu,phanTrieu,million,phanTramNghin,thousandhundred,phanChunNghin,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi];
        [self writeln:str];
    }else if(a < 1000000 && a>=100000){
        
        str = [NSString stringWithFormat:@"%d - %@ %@ %@ %@ %@ %@ %@ %@ %@",a,phanTramNghin,thousandhundred,phanChunNghin,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi];
        [self writeln:str];
    }else if (a < 100000 && a >= 10000){
        
        str = [NSString stringWithFormat:@"%d - %@ %@ %@ %@ %@ %@ %@",a,phanChunNghin,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi];
        [self writeln:str];
    }else if(a < 10000 && a >= 1000 ){
        
        str = [NSString stringWithFormat:@"%d - %@ %@ %@ %@ %@ %@",a,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi];
        [self writeln:str];
    }else if (a < 1000 && a >=100){
        
        str = [NSString stringWithFormat:@"%d - %@ %@ %@ %@",a,phanTram,hundred,phanChuc,phanDonvi];
        [self writeln:str];
    }else if (a > 20 && a < 100){
        
        str = [NSString stringWithFormat:@"%d - %@ %@",a,phanChuc,phanDonvi];
        [self writeln:str];
    }
    
    
}

@end

