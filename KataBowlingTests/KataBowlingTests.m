//
//  KataBowlingTests.m
//  KataBowlingTests
//
//  Created by Fahied on 02/03/14.
//  Copyright (c) 2014 Fahied. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Game.h"

@interface KataBowlingTests : XCTestCase


@property (strong, nonatomic) Game *game;
@end

@implementation KataBowlingTests

- (void)setUp
{
    [super setUp];
    self.game = [[Game alloc] init];
}

- (void)tearDown
{
    self.game = nil;
    [super tearDown];
}

- (void)testNoBonus
{
    NSInteger score = [self.game scoreFromString:@"9-9-9-9-9-9-9-9-9-9-"];
    XCTAssertEqual(score, (NSInteger)90, @"should be 90");
}

- (void)testPerfect
{
    NSInteger score = [self.game scoreFromString:@"XXXXXXXXXXXX"];
    XCTAssertEqual(score, (NSInteger)300, @"should be 300");
}

- (void)testAllSpare
{
    NSInteger score = [self.game scoreFromString:@"5/5/5/5/5/5/5/5/5/5/5"];
    XCTAssertEqual(score, (NSInteger)150, @"should be 150");
}


@end
