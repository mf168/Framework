//
//  CTTableViewViewController.h
//  畅停
//
//  Created by wff on 15/9/17.
//  Copyright (c) 2015年 GuoNing. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ AddressBookBlock) (NSDictionary *dic) ;


@interface CTTableViewViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

//@property (nonatomic,assign) NSInteger page;

@property (nonatomic, copy  ) AddressBookBlock completionBlock;

@property (nonatomic,copy) void (^ tableViewRefreshBlock)(void);

- (void)addressBookPresentViewController;

@end
