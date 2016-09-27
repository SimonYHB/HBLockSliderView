
# HBLockSliderView
快速创建滑动解锁视图，高度自定义,常用于滑动解锁,进度条等等
配套简书文章：[iOS 自定义实现滑动解锁功能](http://www.jianshu.com/p/c162afefe713)

Beautiful Slider View. Written in Objective-C.  Similar in style to UISlider, but which allows you can make more customization.

## Installation

### Installation with CocoaPods

	platform :ios
 	pod 'HBLockSliderView'
 	
### Manually

Copy HBLockSliderView.h HBLockSliderView.m in HBLockSliderView/ to your project.

## Usage
### Example
    HBLockSliderView *slider1 = [[HBLockSliderView alloc] initWithFrame:CGRectMake(20, 50, kScreenW - 20 * 2, 50)];
    HBLockSliderView *slider2 = [[HBLockSliderView alloc] initWithFrame:CGRectMake(20, 150, kScreenW - 20 * 2, 50)];
    slider2.text = @"快跟我一起摇摆";
    [slider2 setColorForBackgroud:[UIColor lightGrayColor] foreground:[UIColor blueColor] thumb:[UIColor purpleColor] border:[UIColor blackColor] textColor:[UIColor whiteColor]];
    HBLockSliderView *slider3 = [[HBLockSliderView alloc] initWithFrame:CGRectMake(20, 250, kScreenW - 20 * 2, 50)];
    [slider3 setThumbBeginImage:[UIImage imageNamed:@"kaisuo"] finishImage:[UIImage imageNamed:@"kaimen"]];
    [self.view addSubview:_slider1];
    [self.view addSubview:_slider2];
    [self.view addSubview:_slider3];
 
### Example Gif
  ![HBLockSlider.gif](http://upload-images.jianshu.io/upload_images/2100810-4e0d5ac91711e2b9.gif?imageMogr2/auto-orient/strip)
### More

```objc
@property (nonatomic, assign) CGFloat value;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong)UIFont *font;
@property (nonatomic,strong) UIImage *thumbImage;
@property (nonatomic,strong) UIImage *finishImage;
@property (nonatomic, assign) BOOL thumbHidden;

//whether the thumb come back when it was draged done
@property (nonatomic,assign) BOOL thumbBack;
@property (nonatomic, weak) id<HBLockSliderDelegate> delegate;
- (void)setSliderValue:(CGFloat)value;
- (void)setSliderValue:(CGFloat)value animation:(BOOL)animation completion:(void(^)(BOOL finish))completion;
- (void)setColorForBackgroud:(UIColor *)backgroud foreground:(UIColor *)foreground thumb:(UIColor *)thumb border:(UIColor *)border textColor:(UIColor *)textColor;
- (void)setThumbBeginImage:(UIImage *)beginImage finishImage:(UIImage *)finishImage;
- (void)removeRoundCorners:(BOOL)corners border:(BOOL)border;
```
  
  
## License

This code is distributed under the terms and conditions of the MIT license.

## MyBlog
配套简书文章：[iOS 自定义实现滑动解锁功能](http://www.jianshu.com/p/c162afefe713)

