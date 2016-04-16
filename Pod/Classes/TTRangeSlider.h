//
//  TTRangeSliderView.h
//
//  Created by Tom Thorpe
//

#import <UIKit/UIKit.h>
#import "TTRangeSliderDelegate.h"

IB_DESIGNABLE
@interface TTRangeSlider : UIControl <UIGestureRecognizerDelegate>

@property (nonatomic, weak) IBOutlet id<TTRangeSliderDelegate> delegate;

/**
 * The minimum possible value to select in the range
 */
@property (nonatomic, assign) IBInspectable float minValue;

/**
 * The maximum possible value to select in the range
 */
@property (nonatomic, assign) IBInspectable float maxValue;

/**
 * The preselected minumum value
 * (note: This should be less than the selectedMaximum)
 */
@property (nonatomic, assign) IBInspectable float selectedMinimum;

/**
 * The preselected maximum value
 * (note: This should be greater than the selectedMinimum)
 */
@property (nonatomic, assign) IBInspectable float selectedMaximum;

/**
 * Each handle in the slider has a label above it showing the current selected value. By default, this is displayed as a decimal format.
 * You can override this default here by supplying your own NSNumberFormatter. For example, you could supply an NSNumberFormatter that has a currency style, or a prefix or suffix.
 * If this property is nil, the default decimal format will be used. Note: If you want no labels at all, please use the hideLabels flag. */
@property (nonatomic, strong) NSNumberFormatter *numberFormatterOverride;

/**
 * Hides the labels above the slider controls. YES = labels will be hidden. NO = labels will be shown. Default is NO.
 */
@property (nonatomic, assign) IBInspectable BOOL hideLabels;

/**
 * The color of the minimum value text label. If not set, the default is the tintColor.
 */
@property (nonatomic, strong) IBInspectable UIColor *minLabelColour;

/**
 * The color of the maximum value text label. If not set, the default is the tintColor.
 */
@property (nonatomic, strong) IBInspectable UIColor *maxLabelColour;

/**
 * The font of the minimum value text label. If not set, the default is system font size 12.
 */
@property (nonatomic, strong) IBInspectable UIFont *minLabelFont;

/**
 * The font of the maximum value text label. If not set, the default is system font size 12.
 */
@property (nonatomic, strong) IBInspectable UIFont *maxLabelFont;

/**
 * If true, the control will mimic a normal slider and have only one handle rather than a range.
 * In this case, the selectedMinValue will be not functional anymore. Use selectedMaxValue instead to determine the value the user has selected.
 */
@property (nonatomic, assign) IBInspectable BOOL disableRange;

@property (nonatomic, assign) IBInspectable float minDistance;

@property (nonatomic, assign) IBInspectable float maxDistance;

/**
 * If true the control will snap to point at each step between minValue and maxValue
 */
@property (nonatomic, assign) IBInspectable BOOL enableStep;

/**
 * The step value, this control the value of each step. If not set the default is 0.1.
 * (note: this is ignored if <= 0.0)
 */
@property (nonatomic, assign) IBInspectable float step;

/**
 *Handle slider with custom image, you can set custom image for your handle
 */
@property (nonatomic, strong) UIImage *handleImage;

/**
 *Handle slider with custom color, you can set custom color for your handle
 */
@property (nonatomic, strong) UIColor *handleColor;

/**
 *Handle diameter (default 16.0)
 */
@property (nonatomic, assign) CGFloat handleDiameter;

/**
 *Selected handle diameter multiplier (default 1.7)
 */
@property (nonatomic, assign) CGFloat selectedHandleDiameterMultiplier;

/**
 *Set slider line tint color between handles
 */
@property (nonatomic, strong) UIColor *tintColorBetweenHandles;

/**
 *Set the slider line height (default 1.0)
 */
@property (nonatomic, assign) CGFloat lineHeight;

@end
