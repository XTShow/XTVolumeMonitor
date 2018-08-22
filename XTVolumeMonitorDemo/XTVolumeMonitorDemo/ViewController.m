//
//  ViewController.m
//  XTVolumeMonitorDemo
//
//  Created by XTShow on 2018/8/22.
//  Copyright © 2018年 XTShow. All rights reserved.
//

#import "ViewController.h"
#import "XTVolumeMonitor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //使用方法
    [XTVolumeMonitor defaultMonitor].muteBlock = ^(BOOL isMute) {
        NSLog(@"静音按钮是否为静音状态：%d",isMute);
    };
    
    [XTVolumeMonitor defaultMonitor].realVolumeBlock = ^(CGFloat currentRealVolume) {
        NSLog(@"当前的真实音量:%f",currentRealVolume);
    };
    
    [XTVolumeMonitor defaultMonitor].volumeChangeBlock = ^(CGFloat oldVolume, CGFloat newVolume) {
        NSLog(@"\n原始音量：%f\n新音量：%f",oldVolume,newVolume);
    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
