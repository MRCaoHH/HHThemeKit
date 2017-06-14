# HHThemeKit

![QQ20170614-154106-HD](https://github.com/MRCaoHH/HHThemeKit/blob/master/ReadmeSource/QQ20170614-154106-HD.gif?raw=true)

### 第一步:

将颜色，字体，图片等样式写入`.plist`文件中。

![](https://github.com/MRCaoHH/HHThemeKit/blob/master/ReadmeSource/14974255968649.jpg?raw=true)

### 第二步设置工程主题的配置文件

```
_themeName = @"Theme";
HHThemeManager *manager = [HHThemeManager manager];
[manager loadThemeWithFileName:_themeName];
```

### 第三步绑定颜色

```
 //标签
 [_label hh_setTextColor:@"Label.textColor"];
 [_label hh_setFont:@"Label.font"];
 
 //按钮
 [_btn hh_setImage:@"Button.imageNor" forState:UIControlStateNormal];
 [_btn hh_setImage:@"Button.imageHig" forState:UIControlStateHighlighted];
 [_btn hh_setBackgroundImage:@"Button.backgroundImageNor" forState:UIControlStateNormal];
 [_btn hh_setBackgroundImage:@"Button.backgroundImageHig" forState:UIControlStateHighlighted];
 [_btn hh_setTitleColor:@"Button.titleColorNor" forState:UIControlStateNormal];
 [_btn hh_setTitleColor:@"Button.titleColorHig" forState:UIControlStateHighlighted];
 [_btn.titleLabel hh_setFont:@"Button.titleFont"];
 
 
 //UIProgressView图片
 [_progressView hh_setTrackImage:@"ProgressView.trackImage"];
 [_progressView hh_setProgressImage:@"ProgressView.progressImage"];

 
 //UIImageView
 [_imgView hh_setImage:@"ImageView.imageNor"];
 [_imgView hh_setHighlightedImage:@"ImageView.imageHig"];

 //SearchBar
 [_searchBar hh_setTintColor:@"SearchBar.tintColor"];
 [_searchBar hh_setBarTintColor:@"SearchBar.barTintColor"];
 [_searchBar hh_setBackgroundImage:@"SearchBar.backgroundImage"];
 [_searchBar hh_setScopeBarBackgroundImage:@"SearchBar.scopeBarBackgroundImage"];

 [_textView hh_setFont:@"TextView.font"];
 [_textView hh_setTextColor:@"TextView.textColor"];
 

 [_switchView hh_setTintColor:@"Switch.tintColor"];
 [_switchView hh_setOnTintColor:@"Switch.onColor"];
 [_switchView hh_setThumbTintColor:@"Switch.thumbTintColor"];
 [_slider hh_setThumbImage:@"Slider.thumbImage" forState:UIControlStateNormal];
 [_slider hh_setMaximumTrackTintColor:@"Slider.maximumTrackTintColor"];
 [_slider hh_setMinimumTrackTintColor:@"Slider.minimumTrackTintColor"];
 
 [_activityIndicatorView hh_setColor:@"ActivityIndicatorView.color"];
 
 [_pageControl hh_setPageIndicatorTintColor:@"PageControl.pageIndicatorTintColor"];
 [_pageControl hh_setCurrentPageIndicatorTintColor:@"PageControl.currentPageIndicatorTintColor"];
 
 [_sepper hh_setDecrementImage:@"Stepper.decrementImageNor" forState:UIControlStateNormal];
 [_sepper hh_setDecrementImage:@"Stepper.decrementImageSel" forState:UIControlStateHighlighted];
 [_sepper hh_setIncrementImage:@"Stepper.incrementImageNor" forState:UIControlStateNormal];
 [_sepper hh_setIncrementImage:@"Stepper.incrementImageSel" forState:UIControlStateHighlighted];
 [_sepper hh_setBackgroundImage:@"Stepper.backgroundImageNor" forState:UIControlStateNormal];
 [_sepper hh_setBackgroundImage:@"Stepper.backgroundImageNSel" forState:UIControlStateHighlighted];
 
 [_segmentedControl hh_setImage:@"SegmentedControl.segmented1" forSegmentAtIndex:0];
 [_segmentedControl hh_setImage:@"SegmentedControl.segmented2" forSegmentAtIndex:1];
 [_segmentedControl hh_setBackgroundImage:@"SegmentedControl.backgroundImageNor" forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
 [_segmentedControl hh_setBackgroundImage:@"SegmentedControl.backgroundImageHig" forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
 
 [_textField hh_setFont:@"TextField.font"];
 [_textField hh_setTextColor:@"TextField.textColor"];
 
 [self.navigationController.navigationBar hh_setBackgroundImage:@"NavBar.bg" forBarMetrics:UIBarMetricsDefault];
 [self.view hh_setBackgroundColor:@"bgColor"];
```


