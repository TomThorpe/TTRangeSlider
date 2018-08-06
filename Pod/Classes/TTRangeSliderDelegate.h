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
- (void)rangeSlider:(TTRangeSlider *)sender didEndTouchesInLeftHandle:(BOOL)leftSelected orRightHandle:(BOOL)rightSelected;

/**
 * Called when the user has started interacting with the RangeSlider
 */
- (void)rangeSlider:(TTRangeSlider *)sender didStartTouchesInLeftHandle:(BOOL)leftSelected orRightHandle:(BOOL)rightSelected;

@end
