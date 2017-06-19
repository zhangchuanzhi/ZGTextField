//
//  ViewController.m
//  ZGTextField
//
//  Created by offcn_zcz32036 on 2017/6/19.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField*textField;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textField=[[UITextField alloc]initWithFrame:CGRectMake(20, 64, ZGSCREEN_WIDTH-40, 30)];
    self.textField.backgroundColor=[UIColor cyanColor];
    self.textField.delegate=self;
    self.textField.keyboardType=UIKeyboardTypeASCIICapable;
    [self.view addSubview:self.textField];
    
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSCharacterSet *cs=[[NSCharacterSet characterSetWithCharactersInString:ALPHANUM]invertedSet];
    NSString *filtered=[[string componentsSeparatedByCharactersInSet:cs]componentsJoinedByString:@""];
    return [string isEqualToString:filtered];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.textField resignFirstResponder];
}
@end
