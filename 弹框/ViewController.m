//
//  ViewController.m
//  弹框
//
//  Created by chenlishuang on 2017/8/3.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import "ViewController.h"
#import "MyAlert.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    NSString *message1 = NSLocalizedString(@"iHealth have two types of strip which designed by different technology:", @"");
    NSString *message2 = [NSString stringWithFormat:@"%@\n%@",@"AGS-1000I(GOD,QR Code)",@"EGS-2003(GDH,No Coding)"];
    NSString *message3 = NSLocalizedString(@"Using the wrong test strip may cause misinterpretation of your actual blood glucose level and may lead to improper therapy.", @"");
    NSString *message4 = NSLocalizedString(@"Be careful to choose the right option on the app depending on your test strip.", @"");
    NSString *message5 = NSLocalizedString(@"In doubt,contact iHealth Labs by the contact section on the app or by email:support@ihealthlabs.com.", @"");

    [MyAlert showNoCancelBtnAlertWithTitle:@"Warning" message:[NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@",message1,message2,message3,message4,message5] confirmTitle:@"OK" confrimBlock:^{
        NSLog(@"hehe");
    }];
    
}

@end
