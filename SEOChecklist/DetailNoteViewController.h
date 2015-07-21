//
//  DetailNoteViewController.h
//  SEOChecklist
//
//  Created by Tyler Hunnefeld on 6/21/15.
//  Copyright (c) 2015 Tyler Hunnefeld. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Notes.h"

@interface DetailNoteViewController : UIViewController <UITextViewDelegate,UITextFieldDelegate>
@property (nonatomic, strong) Notes *output;
@property (strong, nonatomic) IBOutlet UITextView *textField;
@property (strong, nonatomic) IBOutlet UITextField *titleField;



@end