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
    
    if ([c isEqual:x]) {
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
    
    
    int arrInteger[]={1,2,3,4,5,6,7,8,12020010,230984,35467,3546,321,32,21,20,11};
    
    NSString *phanChucTrieu,*phanTrieu,*phanTramNghin,*phanChunNghin,*phanTram,*phanChuc,*phanDonvi,*phanNghin;
    
    NSArray *arrString=@[@"zero",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"nine",@"ten",@"eleven",@"twelve",@"thirteen",@"fourteen",@"fifteen",@"sixteen",@"seventeen",@"eighteen",@"nineteen",@"twelty"];
    
    NSArray *arrTens=@[@"",@"",@"twelty",@"thirty",@"forty",@"fifty",@"sixty",@"seventy",@"eighty",@"ninety"];
    
    NSString *million=@"million",*hundred=@"hundred",*thousand=@"thousand",*thousandhundred=@"hundred";
    
    for (int i=0; i<17; i++) {
        
        if(arrInteger[i]>=0&&arrInteger[i]<20){
            
            NSLog(@"%d - %@",arrInteger[i],arrString[arrInteger[i]]);
            
        }else //Tinh hang chuc trieu
            if(arrInteger[i]<=99000000 && arrInteger[i]>=1000000){
            
            int a=arrInteger[i];
            
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
            NSLog(@"%d -  %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@",a,phanChucTrieu,phanTrieu,million,phanTramNghin,thousandhundred,phanChunNghin,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi);
            
            
        }else
            // Tinh hang tram nghin
            if(arrInteger[i]>=100000 && arrInteger[i]<1000000){
            //Tinh hang tram nghin
            
            int a=arrInteger[i];
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
            NSLog(@"%d - %@ %@ %@ %@ %@ %@ %@ %@ %@",a,phanTramNghin,thousandhundred,phanChunNghin,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi);
            
            
        }else
            // Tinh hang chuc nghin
            if (arrInteger[i]>=10000 && arrInteger[i]<100000){
            //Tinh hang chuc nghin
            
            int a=arrInteger[i];
            int chucNghin,Nghin,Tram,Chuc,donVi;
            
            chucNghin=(a/10000)%10;
            Nghin=(a/1000)%10;
            Tram=(a/100)%10;
            Chuc=(a/10)%10;
            donVi=a%10;

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
            
            if (chucNghin==0&&Nghin==0) {
                
                phanNghin=arrTens[0];
                phanChunNghin=arrTens[0];
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
            
            NSLog(@"%d - %@ %@ %@ %@ %@ %@ %@",a,phanChunNghin,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi);
            
        }else
            // Tinh hang nghin
            if(arrInteger[i]>=1000 && arrInteger[i]<10000){
                //Tinh phan nghin
                int a=arrInteger[i];
                int chucNghin,Nghin,Tram,Chuc,donVi;
                
                chucNghin=(a/10000)%10;
                Nghin=(a/1000)%10;
                Tram=(a/100)%10;
                Chuc=(a/10)%10;
                donVi=a%10;
                
                phanNghin=arrString[Nghin];
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
                
                NSLog(@"%d - %@ %@ %@ %@ %@ %@",a,phanNghin,thousand,phanTram,hundred,phanChuc,phanDonvi);
            
        }else
            //Tinh hang tram
            if(arrInteger[i]>=100 && arrInteger[i]<1000){
                
                int a=arrInteger[i];
                int chucNghin,Nghin,Tram,Chuc,donVi;
                
                chucNghin=(a/10000)%10;
                Nghin=(a/1000)%10;
                Tram=(a/100)%10;
                Chuc=(a/10)%10;
                donVi=a%10;
                
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
                NSLog(@"%d - %@ %@ %@ %@",a,phanTram,hundred,phanChuc,phanDonvi);
            
        }else
            //Tinh phan chuc
            if(arrInteger[i]>20 && arrInteger[i]<100){
                
                int a=arrInteger[i];
                int Chuc,donVi;
                
                Chuc=(a/10)%10;
                donVi=a%10;

                
                if (Chuc>=2) {
                    
                    phanChuc=arrTens[Chuc];
                    phanDonvi=arrString[donVi];
                    
                }
                NSLog(@"%d - %@ %@",a,phanChuc,phanDonvi);
        }
    }
}
-(int) xuly: (int) i{
    return i;

}

-(void) xuly:(int) i
     String1: (NSString*) phanChucTrieu
     String2: (NSString*) phanTrieu
     String3: (NSString*) phanTramNghin
     String4: (NSString*) phanChunNghin
     String5: (NSString*) phanNghin
     String6: (NSString*) phanTram
     String7: (NSString*) phanChuc
     String8: (NSString*) phanDonvi
     String9: (NSString*) million
    String10: (NSString*) hundred
    String11: (NSString*) thousand
    String12: (NSString*) thousandhundred
       Array: (NSArray*) arrString
      Array2: (NSArray*) arrTens
         Int: (int) a{
    
    
    
}
@end
