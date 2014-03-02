//
//  ViewController.h
//  KataBowling
//
//  Created by Fahied on 02/03/14.
//  Copyright (c) 2014 Fahied. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Outlet for the Text input from the user
@property (weak, nonatomic) IBOutlet UITextField *gameResultsTextField;

// outlet to display computed score
@property (weak, nonatomic) IBOutlet UITextField *gameScoreTextField;

// event triggered by button press to compute the score
- (IBAction)calculateScoreButtonPressed:(id)sender;

@end
