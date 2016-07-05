//
//  ASDViewController.m
//  ASDLib
//
//  Created by wf on 07/04/2016.
//  Copyright (c) 2016 wf. All rights reserved.
//

#import "ASDViewController.h"
#import "ASDPushViewController1.h"

@interface ASDViewController ()

@end

@implementation ASDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右" style:UIBarButtonItemStyleDone target:self action:@selector(push)];

    NSString *imagePath=[[[NSBundle mainBundle]pathForResource:@"nihao" ofType:@"bundle"]stringByAppendingPathComponent:@"bank_card"];
    
    
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imagePath]];
    image.center = self.view.center;
    image.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:image];
}

- (void)push{
    ASDPushViewController1 *ta = [ASDPushViewController1 new];
    [self.navigationController pushViewController:ta animated:YES];
}

@end
