//
//  RomanNumeralsKataTests.m
//  RomanNumeralsKataTests
//
//  Created by Samuel Goodwin on 1/22/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import "RomanNumeralsKataTests.h"
#import "GORomanNumeralFormatter.h"

@implementation RomanNumeralsKataTests
@synthesize formatter;

- (void)setUp
{
    [super setUp];
    self.formatter = [[GORomanNumeralFormatter alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testI{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:1]];
    STAssertTrue([result isEqualToString:@"I"], @"1 should be I");
}

- (void)testII{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:2]];
    STAssertTrue([result isEqualToString:@"II"], @"2 should be II");
}

- (void)testIII{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:3]];
    STAssertTrue([result isEqualToString:@"III"], @"3 should be III");
}

@end
