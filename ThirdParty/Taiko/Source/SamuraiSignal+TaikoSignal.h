//
//  TaikoSignal.h
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Samurai_Signal.h"

#undef  taiko_as_source_property
#define taiko_as_source_property(clz, name) \
        property (nonatomic, strong, readonly) clz * name;

#undef  taiko_def_source_property
#define taiko_def_source_property(clz, name) \
        dynamic name; \
        - (clz *)name { \
            TaikoCheckSourceType(clz) \
            return self.source; \
        }

#pragma mark -

@interface SamuraiSignal(TaikoSignal)

@property (nonatomic, strong, readonly) id preferedSource;

@taiko_as_source_property( UIView,              uiView );
@taiko_as_source_property( UISlider,            uiSlider );
@taiko_as_source_property( UIButton,            uiButton );
@taiko_as_source_property( UISwitch,            uiSwitch );
@taiko_as_source_property( UIStepper,           uiStepper );
@taiko_as_source_property( UITextField,         uiInput );
@taiko_as_source_property( UITextView,          uiTextArea );
@taiko_as_source_property( UISegmentedControl,  uiSegment );
@taiko_as_source_property( __kindof UIView,     uiCell ); // UITableViewCell or UICollectionViewCell

@end
