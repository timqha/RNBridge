//
//  RNGradientView.m
//  ReactNativeBridgeGradient
//
//  Created by proSolvo on 2/13/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNGradientView.h"
#import <UIKit/UIKit.h>

@interface RNGradientView()
@property CAGradientLayer *gradientLayer;

@property UIColor *_fromColor;
@property UIColor *_toColor;
@property NSString *_progress;
@property NSString *_cornerRadius;
@end

@implementation RNGradientView

// Mark: - Init
- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    self.gradientLayer = [self makeGradientLayer];
    [self.layer addSublayer:self.gradientLayer];
  
    self._fromColor = [UIColor blackColor];
    self._toColor = [UIColor whiteColor];
    self._progress = @0.5;
    [self update];
  }
  return self;
}

// Mark - Life cycle

-(void)layoutSubviews {
  [super layoutSubviews];
  self.gradientLayer.frame = CGRectMake(
    0,
    0, self.bounds.size.width*self._progress.floatValue,
    self.bounds.size.height
  );
}

// MARK: - Properties
- (void)setFromColor:(UIColor *)color {
  self._fromColor = color;
  [self update];
}
- (void)setToColor:(UIColor *)color {
  self._toColor = color;
  [self update];
}
- (void)setProgress:(NSNumber *)progress {
  self._progress = progress;
  [self update];
}
- (void)setCornerRadius:(NSNumber *)cornerRadius {
  self._cornerRadius = cornerRadius;
  [self update];
}
// MARK: - Helper
- (void)update {
  self.gradientLayer.colors = @[
                                (id)self._fromColor.CGColor,
                                (id)self._toColor.CGColor
                                ];
  self.gradientLayer.cornerRadius = self._cornerRadius.floatValue;
  [self setNeedsLayout];
}
- (CAGradientLayer *)makeGradientLayer {
  CAGradientLayer *gradientLayer = [CAGradientLayer layer];
  gradientLayer.masksToBounds = true;
  gradientLayer.startPoint = CGPointMake(0.0, 0.5);
  gradientLayer.endPoint = CGPointMake(1.0, 0.5);
  gradientLayer.anchorPoint = CGPointZero;
  return gradientLayer;
}
@end
