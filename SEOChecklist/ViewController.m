//
//  ViewController.m
//  SEOChecklist
//
//  Created by Tyler Hunnefeld on 6/21/15.
//  Copyright (c) 2015 Tyler Hunnefeld. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray *checklist;
}
@synthesize tableView=_tableView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *s1 = @"Installed Google Analytics",
    *s2 = @"Installed Google Webmaster tools",
    *s3 = @"Installed Bing Webmaster tools",
    *s4 = @"(WP) Installed SEO for Wordpress",
    *s5 = @"Checked for broken links and redirects",
    *s6 = @"Used Google's Keyword Research tool",
    *s7 = @"Primary keyword in URL",
    *s8 = @"Keyword in H1 tags",
    *s9 = @"Sufficient amount of copy",
    *s10 = @"Synonyms used in copy",
    *s11 = @"Images have alt text and filenames",
    *s12 = @"Link building completed",
    *s13 = @"No duplicate content",
    *s14 = @"Meta desciptions at most 155 characters",
    *s15 = @"XML sitemap submitted to Google",
    *s16 = @"XML sitemap submitted to Bing",
    *s17 = @"Relevant social media accounts obtained",
    *s18 = @"Site is mobile friendly";
    checklist = [NSArray arrayWithObjects:s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Methods needed to implement  UITableView functionality - (NOT optional)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [checklist count];
}

// Methods needed to implement  UITableView functionality - (NOT optional)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SEOCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    NSString *output = [checklist objectAtIndex:indexPath.row];
    cell.textLabel.text = output;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType==UITableViewCellAccessoryCheckmark){
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    else {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
}


@end
