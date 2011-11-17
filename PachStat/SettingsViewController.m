//
//  SettingsViewController.m
//  PachStat
//
//  Created by Levent Ali on 17/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SettingsViewController.h"

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Settings", @"Settings");
        self.tabBarItem.image = [UIImage imageNamed:@"157-wrench"];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [feedIdField setText:[[NSUserDefaults standardUserDefaults] objectForKey:@"feedId"]];
    [apiKeyField setText:[[NSUserDefaults standardUserDefaults] objectForKey:@"apiKey"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)saveSettings:(id)sender {
    feedId = [[NSString alloc] initWithFormat:feedIdField.text];
    [feedIdField setText:feedId];
    NSUserDefaults *feedIdDefault = [NSUserDefaults standardUserDefaults];
    [feedIdDefault setObject:feedId forKey:@"feedId"];
    
    apiKey = [[NSString alloc] initWithFormat:apiKeyField.text];
    [apiKeyField setText:apiKey];
    NSUserDefaults *apiKeyDefault = [NSUserDefaults standardUserDefaults];
    [apiKeyDefault setObject:apiKey forKey:@"apiKey"];
    
    [self backgroundClick:sender];
}

//- (IBAction)textFieldDoneEditing:(id)sender {
//    [sender resignFirstResponder];
//}

- (IBAction)backgroundClick:(id)sender {
    [feedIdField resignFirstResponder];
    [apiKeyField resignFirstResponder];
}

@end
