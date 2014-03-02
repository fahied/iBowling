//
//  ViewController.m
//  KataBowling
//
//  Created by Fahied on 02/03/14.
//  Copyright (c) 2014 Fahied. All rights reserved.
//

#import "ViewController.h"
#import "Game.h"


@interface ViewController ()
{
    Game *game;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    game = [[Game alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Called when user press on 
- (IBAction)calculateScoreButtonPressed:(id)sender
{
    // provided a valid sequence of rolls in string format from TextField calculte the game score
    int score = [game scoreFromString:_gameResultsTextField.text];
    
    // set the score to the game score TextField
    _gameScoreTextField.text = [NSString stringWithFormat:@"%d",score];
    
}
@end
