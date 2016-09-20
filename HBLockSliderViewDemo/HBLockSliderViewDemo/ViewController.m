//
//  ViewController.m
//  HBLockSliderViewDemo
//
//  Created by 屌炸天 on 16/9/21.
//  Copyright © 2016年 yhb. All rights reserved.
//

#import "ViewController.h"
#import "HBLockSliderView.h"
#define kScreenW [UIScreen mainScreen].bounds.size.width
@interface ViewController ()<HBLockSliderDelegate>
@property (nonatomic,strong) HBLockSliderView *slider1;
@property (nonatomic,strong) HBLockSliderView *slider2;
@property (nonatomic,strong) HBLockSliderView *slider3;
@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _slider1 = [[HBLockSliderView alloc] initWithFrame:CGRectMake(20, 50, kScreenW - 20 * 2, 50)];
    _slider1.thumbHidden = YES;
    _slider1.thumbBack = NO;
    _slider2 = [[HBLockSliderView alloc] initWithFrame:CGRectMake(20, 150, kScreenW - 20 * 2, 50)];
    _slider2.text = @"快跟我一起摇摆";
    [_slider2 setColorForBackgroud:[UIColor lightGrayColor] foreground:[UIColor blueColor] thumb:[UIColor purpleColor] border:[UIColor blackColor] textColor:[UIColor whiteColor]];
    _slider3 = [[HBLockSliderView alloc] initWithFrame:CGRectMake(20, 250, kScreenW - 20 * 2, 50)];
    [_slider3 setThumbBeginImage:[UIImage imageNamed:@"kaisuo"] finishImage:[UIImage imageNamed:@"kaimen"]];
    
    //    _slider3.font = [UIFont systemFontOfSize:15];
    _slider1.delegate = self;
    _slider2.delegate = self;
    _slider3.delegate = self;
    [self.view addSubview:_slider1];
    [self.view addSubview:_slider2];
    [self.view addSubview:_slider3];
    //    _slider3.thumbHidden = YES;
    //    [_slider3 removeRoundCorners:YES border:YES];
    
    
}
- (void)sliderEndValueChanged:(HBLockSliderView *)slider{
    if (slider.value == 1) {
        //        slider.thumbBack = NO;
        //        [slider setSliderValue:1.0];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"解锁成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    }
}

- (void)sliderValueChanging:(HBLockSliderView *)slider{
    //    NSLog(@"%f",slider.value);
}

@end
