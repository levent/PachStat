//
//  SettingsViewController.h
//  PachStat
//
//  Created by Levent Ali on 17/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController {
    NSString *feedId;
    NSString *apiKey;
    
    IBOutlet UITextField *feedIdField;
    IBOutlet UITextField *apiKeyField;
}

- (IBAction)saveSettings:(id)sender;
- (IBAction)backgroundClick:(id)sender;

@end
