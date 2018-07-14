//
//  ViewController.m
//  IOS_SegueUsingOneClass
//
//  Created by Student P_02 on 06/06/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int flag=0;
- (void)viewDidLoad {
    [super viewDidLoad];
    if(flag==1)
    {
        self.NameLable.text=self.NameString;
    NSLog(@"Name=%@",self.NameLable.text);
    }
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"mySegue"])
    {
        ViewController *vc=segue.destinationViewController;
        vc.self.NameString=self.NameTextField.text;
        flag=1;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
