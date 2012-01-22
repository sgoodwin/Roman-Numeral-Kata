//
//  RomanNumeralsKataTests.m
//  RomanNumeralsKataTests
//
//  Created by Samuel Goodwin on 1/22/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import "RomanNumeralsKataTests.h"

@implementation RomanNumeralsKataTests

- (void)setUp
{
    [super setUp];
    self.formatter = [[GORomanNumeralFormatter alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testExample
{
    STAssertTrue(YES, @"Awesome, it works");
}

@end
