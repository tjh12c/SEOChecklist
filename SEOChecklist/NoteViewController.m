//
//  NoteViewController.m
//  SEOChecklist
//
//  Created by Tyler Hunnefeld on 6/21/15.
//  Copyright (c) 2015 Tyler Hunnefeld. All rights reserved.
//

#import "NoteViewController.h"
#import "DetailNoteViewController.h"
@interface NoteViewController ()

@end

@implementation NoteViewController {
    NSArray *noteArray;
}
@synthesize tableView = _tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Notes *note1 = [Notes new];
    note1.noteTitle = @"A note!";
    note1.noteInput = @"This is an example of the text of a note example. \nThis is super long lol";
    Notes *note2 = [Notes new];
    note2.noteTitle = @"Note number 2!";
    note2.noteInput = @"Note 2 looks exactly like note 1! These notes are easy ways to keep track of stuff!";
    noteArray = [NSArray arrayWithObjects:note1,note2, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [noteArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"noteCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    Notes *output = [noteArray objectAtIndex:indexPath.row];
    cell.textLabel.text = output.noteTitle;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showNoteDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailNoteViewController *destViewController = segue.destinationViewController;
        destViewController.output = [noteArray objectAtIndex:indexPath.row];
    }
}

@end
