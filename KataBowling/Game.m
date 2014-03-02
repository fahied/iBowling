//
//  Game.m
//  KataBowling
//
//  Created by Fahied on 02/03/14.
//  Copyright (c) 2014 Fahied. All rights reserved.
//

#import "Game.h"
#import "Roll.h"

@implementation Game


/**
 *
 * @param resultString a valid sequence of rolls for one line of American Ten-Pin Bowling
 * @return Accumulated score of all played frames for the game
 */
- (NSInteger)scoreFromString:(NSString *)resultString
{
    NSArray *rolls = [self rollsFromString:resultString]; // assign 
    
    NSInteger total = 0; // total score of the game
    NSInteger bonus = 0; // bonus socre for a strike or spare
    
    // itrate through all rolls
    for (NSInteger index = 0; index < [rolls count]; index++)
    {
        Roll *roll = rolls[index];
        
        // total score
        total += roll.score;
        
        // bonus score
        if (roll.frame < 10) {
            if ([roll isStrike] ) {
                Roll *next = rolls[index + 1];
                Roll *next2 = rolls[index + 2];
                bonus += next.score + next2.score;
            }
            else if ([roll isSpare]) {
                Roll *next = rolls[index + 1];
                bonus += next.score;
            }
        }
    }
    
    return total + bonus;
}



/**
 *
 * @param resultString a valid sequence of rolls for one line of American Ten-Pin Bowling
 * @return return an array of computed Rolls
 */
- (NSArray *)rollsFromString:(NSString *)resulString
{
    NSMutableArray *rolls = [NSMutableArray array];
    
    NSInteger frame = 1; // index for games frame starting from 1
    
    BOOL isFirstRoll = YES; // flag that keep computed value for first roll in given frame
    
    // loop through the result string to compute roll and add to rolls array
    for (NSInteger index = 0; index < [resulString length]; index++) {
        Roll *roll = [[Roll alloc] init];
        
        // roll property
        roll.value = [resulString substringWithRange:NSMakeRange(index, 1)];
        roll.frame = frame; // frame number
        roll.isFirstRoll = isFirstRoll; // is first roll in current frame
        
        if ([roll isStrike]) {
            roll.score = 10;
        }
        else if ([roll isSpare]) {
            Roll *prev = [rolls lastObject];
            roll.score = 10 - prev.score;
        }
        else if ([roll isMiss]){
            roll.score = 0;
        }
        else
        {
            roll.score = [roll.value integerValue];
        }
        
        // add to array
        [rolls addObject:roll];
        
        // next roll property
        if (!isFirstRoll || [roll isStrike] || [roll isSpare]) {
            isFirstRoll = YES;
            frame++;
        }
        else {
            isFirstRoll = NO;
        }
    }
    
    return rolls;
}



@end
