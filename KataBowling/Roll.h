//
//  Roll.h
//  KataBowling
//
//  Created by Fahied on 02/03/14.
//  Copyright (c) 2014 Fahied. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Roll : NSObject


// Public Properties
/*
 string value for number of balls knocked down in this roll. valid values are 1-9, 
 '-' if it is miss(player could not knocked down any ball), '/' if it is spare and 'X' if it is strike
 */
@property (strong, nonatomic) NSString *value;
@property (assign, nonatomic) NSInteger score; // computed score
@property (assign, nonatomic) NSInteger frame; // frame number
@property (assign, nonatomic) BOOL isFirstRoll; // flag that keeps value for the first roll in a frame


// public Methods
- (BOOL)isStrike; // check if the roll value is '/' return true else false
- (BOOL)isSpare; // check if the roll value is 'X' return true else false
- (BOOL)isMiss;  // check if the roll value is '-' return true esle false


@end
