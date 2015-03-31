//
//  ViewController.m
//  RangeSliderDemo
//
//  Created by Tom Thorpe on 31/03/2015.
//  Copyright (c) 2015 tomthorpe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *maxLabel;
@property (weak, nonatomic) IBOutlet UILabel *minLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.rangeSlider.delegate = self;
    
    self.rangeSlider.minValue = 0;
    self.rangeSlider.maxValue = 200;
    self.rangeSlider.selectedMinimum = 50;
    self.rangeSlider.selectedMaximum = 150;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TTRangeSliderViewDelegate
-(void)rangeSlider:(TTRangeSlider *)sender didChangeSelectedMinimumValue:(float)selectedMinimum andMaximumValue:(float)selectedMaximum{
    self.minLabel.text = [NSString stringWithFormat:@"Min: %.0f", selectedMinimum];
    self.maxLabel.text = [NSString stringWithFormat:@"Max: %.0f", selectedMaximum];
}

@end
