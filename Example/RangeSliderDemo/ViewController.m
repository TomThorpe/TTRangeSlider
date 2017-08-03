//
//  ViewController.m
//  RangeSliderDemo
//
//  Created by Tom Thorpe on 31/03/2015.
//  Copyright (c) 2015 tomthorpe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet TTRangeSlider *rangeSlider;
@property (weak, nonatomic) IBOutlet TTRangeSlider *rangeSliderCurrency;
@property (weak, nonatomic) IBOutlet TTRangeSlider *rangeSliderCustom;
@end

@implementation ViewController

- (void)logControlEvent:(TTRangeSlider *)sender {
    NSLog(@"Standard slider updated. Min Value: %.0f Max Value: %.0f", sender.selectedMinimum, sender.selectedMaximum);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //standard rsnge slider
    self.rangeSlider.minValue = 0;
    self.rangeSlider.maxValue = 200;
    self.rangeSlider.selectedMinimum = 50;
    self.rangeSlider.selectedMaximum = 150;
    [self.rangeSlider addTarget:self action:@selector(logControlEvent:) forControlEvents:UIControlEventValueChanged];
    
    //currency range slider
    self.rangeSliderCurrency.delegate = self;
    self.rangeSliderCurrency.minValue = 50;
    self.rangeSliderCurrency.maxValue = 150;
    self.rangeSliderCurrency.selectedMinimum = 50;
    self.rangeSliderCurrency.selectedMaximum = 150;
    self.rangeSliderCurrency.handleColor = [UIColor greenColor];
    self.rangeSliderCurrency.handleDiameter = 30;
    self.rangeSliderCurrency.selectedHandleDiameterMultiplier = 1.3;
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    self.rangeSliderCurrency.numberFormatterOverride = formatter;
    
    //custom number formatter range slider
    self.rangeSliderCustom.delegate = self;
    self.rangeSliderCustom.minValue = 0;
    self.rangeSliderCustom.maxValue = 100;
    self.rangeSliderCustom.selectedMinimum = 40;
    self.rangeSliderCustom.selectedMaximum = 60;
    self.rangeSliderCustom.handleImage = [UIImage imageNamed:@"custom-handle"];
    self.rangeSliderCustom.selectedHandleDiameterMultiplier = 1;
    self.rangeSliderCustom.tintColorBetweenHandles = [UIColor redColor];
    self.rangeSliderCustom.lineBorderWidth = 1;
    self.rangeSliderCustom.lineBorderColor = [UIColor darkGrayColor];
    NSNumberFormatter *customFormatter = [[NSNumberFormatter alloc] init];
    customFormatter.positiveSuffix = @"B";
    self.rangeSliderCustom.numberFormatterOverride = customFormatter;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TTRangeSliderViewDelegate
-(void)rangeSlider:(TTRangeSlider *)sender didChangeSelectedMinimumValue:(float)selectedMinimum andMaximumValue:(float)selectedMaximum{
    if (sender == self.rangeSliderCurrency) {
        NSLog(@"Currency slider updated. Min Value: %.0f Max Value: %.0f", selectedMinimum, selectedMaximum);
    }
    else if (sender == self.rangeSliderCustom){
        NSLog(@"Custom slider updated. Min Value: %.0f Max Value: %.0f", selectedMinimum, selectedMaximum);
    }
}

@end
