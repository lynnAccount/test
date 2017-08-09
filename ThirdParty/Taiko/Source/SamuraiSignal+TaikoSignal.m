//
//  TaikoSignal.m
//  samurai-lite-demo
//
//  Created by QFish on 1/8/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import "SamuraiSignal+TaikoSignal.h"

#undef  TaikoCheckSourceType
#define TaikoCheckSourceType( x ) \
        NSAssert2( [self.source isKindOfClass:[x class]], @"Signal source is kind of [%@ class], but expected to be [%@ class]. You may access wrong source, please check.", [self.source class], [x class]);

static const char kTaikoPreferedSourceKey;

@implementation SamuraiSignal(TaikoSignal)

@dynamic preferedSource;

- (void)setPreferedSource:(id)preferedSource
{
    objc_setAssociatedObject( self, &kTaikoPreferedSourceKey, preferedSource, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
}

- (id)preferedSource
{
    return objc_getAssociatedObject(self, &kTaikoPreferedSourceKey);
}

#pragma mark -

@taiko_def_source_property( UIView,               uiView );
@taiko_def_source_property( UISlider,             uiSlider );
@taiko_def_source_property( UIButton,             uiButton );
@taiko_def_source_property( UISwitch,             uiSwitch );
@taiko_def_source_property( UIStepper,            uiStepper );
@taiko_def_source_property( UITextField,          uiInput );
@taiko_def_source_property( UITextView,           uiTextArea );
@taiko_def_source_property( UISegmentedControl,   uiSegment );

@dynamic uiCell;

- (__kindof UIView *)uiCell
{
    UIView * source = self.source;
    
    if ( [source isKindOfClass:UIView.class] )
    {
        UIView * view = source.superview;
        
        while ( view )
        {
            if ( [view isKindOfClass:UITableViewCell.class] )
            {
                return view;
            }
            
            if ( [view isKindOfClass:UICollectionViewCell.class] )
            {
                return view;
            }
            
            view = view.superview;
        }
    }
    
    return nil;
}

@end
