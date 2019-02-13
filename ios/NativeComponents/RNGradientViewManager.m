//
//  RNGradientViewManager.m
//  ReactNativeBridgeGradient
//
//  Created by proSolvo on 2/13/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNGradientViewManager.h"
#import "RNGradientView.h"

@implementation RNGradientViewManager

RCT_EXPORT_MODULE()

- (UIView *)view {
  return [[RNGradientView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(progress, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(cornerRadius, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(fromColor, UIColor);
RCT_EXPORT_VIEW_PROPERTY(toColor, UIColor);


@end
