//
//  UITableView+QuickReusing.h
//
//  Created by QFish on 7/19/15.
//  Copyright (c) 2015 QFish. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark -

@interface UITableViewCell (QuickReusing)
+ (void)registerNibTo:(UITableView *)tableView;
+ (void)registerClassTo:(UITableView *)tableView;
@end

@interface UITableViewHeaderFooterView (QuickReusing)
+ (void)registerNibTo:(UITableView *)tableView;
+ (void)registerClassTo:(UITableView *)tableView;
@end

#pragma mark -

@interface UITableView (QuickReusing)

// Register reusing cell
- (void)registerNib:(NSString *)nibName;
- (void)registerNib:(NSString *)nibName identifier:(NSString *)identifier;
- (void)registerNib:(NSString *)nibName bundle:(NSBundle *)bundle;
- (void)registerNib:(NSString *)nibName bundle:(NSBundle *)bundle identifier:(NSString *)identifier;
- (void)registerClass:(NSString *)className;
// Register reusing header or footer
- (void)registerHeaderFooterNib:(NSString *)nibName;
- (void)registerHeaderFooterNib:(NSString *)nibName bundle:(NSBundle *)bundle;
- (void)registerHeaderFooterClass:(NSString *)className;

// Dequeue cell
// identifier is NSString or Class
- (id)dequeue:(id)identifier;
- (id)dequeue:(id)identifier forIndexPath:(NSIndexPath*)indexPath;
- (id)dequeueHeaderFooter:(id)identifier;

@end
