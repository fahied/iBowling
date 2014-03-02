//
//  Roll.m
//  KataBowling
//
//  Created by Fahied on 02/03/14.
//  Copyright (c) 2014 Fahied. All rights reserved.
//

#import "Roll.h"

@implementation Roll

// check if the roll value is '/' return true else false
- (BOOL)isStrike
{
    return [self.value isEqualToString:@"X"];
}

// check if the roll value is 'X' return true else false
- (BOOL)isSpare
{
    return [self.value isEqualToString:@"/"];
}

// check if the roll value is '-' return true esle false
-(BOOL)isMiss
{
    return [self.value isEqualToString:@"-"];
}



@end
