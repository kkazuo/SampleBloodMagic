//
//  OBIViewController.h
//  Sample
//
//  Created by Kazuo Koga on 2014/04/04.
//  Copyright (c) 2014年 Kazuo Koga. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyProtocol;

@interface OBIViewController : UIViewController

@property (weak, nonatomic) id<MyProtocol> myDelegate;

@end

@protocol MyProtocol <NSObject>

- (void)doSomething;

@end
