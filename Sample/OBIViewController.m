//
//  OBIViewController.m
//  Sample
//
//  Created by Kazuo Koga on 2014/04/04.
//  Copyright (c) 2014年 Kazuo Koga. All rights reserved.
//

#import "OBIViewController.h"

#import <BloodMagic/Lazy.h>

@interface OBIViewController () <BMLazy>

@end

@implementation OBIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    id delegate = self.myDelegate;
    if ([delegate respondsToSelector:@selector(doSomething)]) {
        [delegate doSomething];
    }

#if 1 // <- can crash if this is 0.
    Protocol *p = @protocol(MyProtocol);
    (void)p;
#endif
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
