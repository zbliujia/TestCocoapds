//
//  ViewController.m
//  TestExtension
//
//  Created by jiedaibao on 5/16/16.
//  Copyright © 2016 jiedaibao. All rights reserved.
//

#import "ViewController.h"
#import <UIAlertView+AFNetworking.h>

@interface ViewController ()

#ifdef TEST_MACRO

- (void)say
{
    NSLog(@"");
}

#endif

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [UIAlertView showAlertViewForRequestOperationWithErrorOnCompletion:nil delegate:nil cancelButtonTitle:nil otherButtonTitles: nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
