//
//  UIScrollView+ReachEnds.m
//  Common
//
//  Created by QFish on 8/23/14.
//  Copyright (c) 2014 iNoknok. All rights reserved.
//

#import "UIScrollView+ReachEnds.h"

@implementation UIScrollView (ReachEnds)

- (BOOL)reachesEnd
{
    CGPoint offset = self.contentOffset;
    CGSize csz = self.contentSize;
    CGSize bsz = self.bounds.size;
    
    return csz.height < bsz.height || offset.y == csz.height - bsz.height;
}

- (void)scrollToHorizonalEndAnimated:(BOOL)animated
{
    CGSize csz = self.contentSize;
    CGSize bsz = self.bounds.size;
    NSInteger inset = self.contentInset.right;
    if (self.contentOffset.x + bsz.width + inset > csz.width) {
        [self setContentOffset:CGPointMake(csz.width - bsz.height + inset,
                                         self.contentOffset.y)
                    animated:animated];
    }
}

- (void)scrollToVerticalEndAnimated:(BOOL)animated
{
    CGSize csz = self.contentSize;
    CGSize bsz = self.bounds.size;
    NSInteger bottomInset = self.contentInset.bottom;
    if (self.contentOffset.y + bsz.height + bottomInset > csz.height) {
        [self setContentOffset:CGPointMake(self.contentOffset.x,
                                           csz.height - bsz.height + bottomInset)
                      animated:animated];
    }
}

@end

#pragma mark -

@implementation UITableView (ReachEnds)

- (void)scrollToVerticalEndAnimated:(BOOL)animated
{
    NSInteger section = self.numberOfSections - 1;
    NSInteger count = [self numberOfRowsInSection:(self.numberOfSections - 1)] - 1;

    if ( section >= 0 && count > 0 ) {
        NSIndexPath * indexPath = [NSIndexPath indexPathForRow:count inSection:section];
        [self scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:animated];
    }
}

@end

#pragma mark -

@implementation UICollectionView (ReachEnds)

- (void)scrollToHorizonalEndAnimated:(BOOL)animated
{
    NSInteger section = self.numberOfSections - 1;
    NSInteger count = [self numberOfItemsInSection:(self.numberOfSections - 1)] - 1;
    
    if ( section >= 0 && count > 0 ) {
        NSIndexPath * indexPath = [NSIndexPath indexPathForItem:count inSection:section];
        [self scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionRight animated:animated];
    }
}

- (void)scrollToVerticalEndAnimated:(BOOL)animated
{
    NSInteger section = self.numberOfSections - 1;
    NSInteger count = [self numberOfItemsInSection:(self.numberOfSections - 1)] - 1;
    
    if ( section >= 0 && count > 0 ) {
        NSIndexPath * indexPath = [NSIndexPath indexPathForItem:count inSection:section];
        [self scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionBottom animated:animated];
    }
}

@end