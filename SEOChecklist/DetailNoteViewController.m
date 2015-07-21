//
//  DetailNoteViewController.m
//  SEOChecklist
//
//  Created by Tyler Hunnefeld on 6/21/15.
//  Copyright (c) 2015 Tyler Hunnefeld. All rights reserved.
//

#import "DetailNoteViewController.h"
#import "NoteViewController.h"

@interface DetailNoteViewController ()

@end

@implementation DetailNoteViewController
@synthesize titleField, textField, output;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = output.noteTitle;
    self.titleField.text = output.noteTitle;
    self.textField.text = output.noteInput;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    NSLog(@"textViewShouldEndEditing:");
    return YES;
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    NSLog(@"textViewDidEndEditing:");
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    NSCharacterSet *doneButtonCharacterSet = [NSCharacterSet newlineCharacterSet];
    NSRange replacementTextRange = [text rangeOfCharacterFromSet:doneButtonCharacterSet];
    NSUInteger location = replacementTextRange.location;
    if (location != NSNotFound){
        [textView resignFirstResponder];
        output.noteInput=textView.text;
        return NO;
    }
    return YES;
}@end