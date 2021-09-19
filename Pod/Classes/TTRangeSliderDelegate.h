//
//  YLRangeSliderViewDelegate.h
//  FantasyRealFootball
//
//  Created by Tom Thorpe on 16/04/2014.
//  Copyright (c) 2014 Yahoo inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TTRangeSlider;

@protocol TTRangeSliderDelegate <NSObject>

@optional

/**
 * Called when the RangeSlider values are changed
 */
-(void)rangeSlider:(TTRangeSlider *)sender didChangeSelectedMinimumValue:(float)selectedMinimum andMaximumValue:(float)selectedMaximum;

/**
 * Called when the user has finished interacting with the RangeSlider
 */
- (void)didEndTouchesInRangeSlider:(TTRangeSlider *)sender;

/**
 * Called when the user has started interacting with the RangeSlider
 */
- (void)didStartTouchesInRangeSlider:(TTRangeSlider *)sender;

/**
 * Called when the user wants to override the selected min/max labels based upon their passed in float values.
 */

- (nullable NSString *)overrideLabelForRangeSlider:(TTRangeSlider *_Nullable)sender minMaxValue:(float)selectedVal;

@end
