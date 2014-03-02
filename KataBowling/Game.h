//
//  Game.h
//  KataBowling
//
//  Created by Fahied on 02/03/14.
//  Copyright (c) 2014 Fahied. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * Game class contains the logic to identify the rolls from the given bowling game string in the form of "X12" etc.
 * Limitations:
 * 1. The app will simply crash if the sequence of rolls is not valid i.e. 5/ , X1
 * 2. will not check for valid rolls.
 * 3. We will not check for correct number of rolls and frames.
 * 4. will not provide scores for intermediate frames.
 */
@interface Game : NSObject


// Public Methods

/**
 *
 * @param resultString a valid sequence of rolls for one line of American Ten-Pin Bowling
 * @return Accumulated score of all played frames for the game
 */
- (NSInteger)scoreFromString:(NSString *)resultString;

@end
