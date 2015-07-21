//
//  NoteViewController.h
//  SEOChecklist
//
//  Created by Tyler Hunnefeld on 6/21/15.
//  Copyright (c) 2015 Tyler Hunnefeld. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Notes.h"

@interface NoteViewController : UIViewController <UITableViewDataSource, UITabBarDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIButton *headerNote;


@end

