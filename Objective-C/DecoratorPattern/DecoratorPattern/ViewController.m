//
//  ViewController.m
//  DecoratorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "ViewController.h"
#import "DYSComponent.h"
#import "DYSDecorator1.h"
#import "DYSDecorator2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DYSAbstractComponent *component = [DYSComponent new];
    [component operate];

    DYSDecorator1 *decorator1 = [DYSDecorator1 new];
    decorator1.component = component;
    [decorator1 operate];

    DYSDecorator2 *decorator2 = [DYSDecorator2 new];
    decorator2.component = component;
    [decorator2 operate];
}

@end
