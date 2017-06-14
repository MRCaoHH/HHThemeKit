//
//  HHRootViweController.m
//  HHThemeKit
//
//  Created by caohuihui on 2017/5/9.
//  Copyright © 2017年 caohuihi. All rights reserved.
//

#import "HHRootViweController.h"
#import <HHThemeKit/HHThemeKit.h>

@interface HHRootViweController ()<UISearchBarDelegate,UITextFieldDelegate,UITextViewDelegate>{
    NSString *_themeName;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIStepper *sepper;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISwitch *switchView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@end

@implementation HHRootViweController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self changeTheme:nil];
    [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initUI{
    
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
}

#pragma mark - 交互
- (IBAction)changeTheme:(id)sender {
    if ([_themeName isEqualToString:@"Theme"]) {
        _themeName = @"ThemeNig";
    }else{
        _themeName = @"Theme";
    }
    HHThemeManager *manager = [HHThemeManager manager];
    [manager loadThemeWithFileName:_themeName];
}

#pragma mark - UISearchBarDelegate
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [searchBar resignFirstResponder];
}

- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar {
    
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    [searchBar resignFirstResponder];
}

- (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar{
    
}


#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if ([string isEqualToString:@"\n"]) {
        [textField resignFirstResponder];
        return NO;
    }
    return YES;
}

#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}
@end
