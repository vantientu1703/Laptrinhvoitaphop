//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"NSArray", MENU: @[
                                    @{TITLE: @"CreateArray", CLASS: @"CreateArray"},
                                    @{TITLE: @"Truy van co HW",CLASS: @"CreateArrayHW"},
                                    @{TITLE: @"SendMessage",CLASS: @"SendMessage"}
                                    
                          ]};
    NSDictionary* intermediate = @{SECTION: @"Demo", MENU: @[
                                    
                                  ]};
    NSDictionary* advanced = @{SECTION: @"NSArray", MENU: @[
                                    
                                    
                                    ]};
    
    mainScreen.menu = @[basic, intermediate, advanced];
    mainScreen.title = @"Lập trình với tập hợp";
    mainScreen.about = @"This is demo by Van Tien Tu";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
