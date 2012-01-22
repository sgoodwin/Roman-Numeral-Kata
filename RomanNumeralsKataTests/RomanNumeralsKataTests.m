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
    STAssertTrue([result isEqualToString:@"I"], @"%@ should be I", result);
}

- (void)testII{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:2]];
    STAssertTrue([result isEqualToString:@"II"], @"%@ should be II", result);
}

- (void)testIII{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:3]];
    STAssertTrue([result isEqualToString:@"III"], @"%@ should be III", result);
}

- (void)testIV{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:4]];
    STAssertTrue([result isEqualToString:@"IV"], @"%@ should be IV", result);
}

- (void)testV{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:5]];
    STAssertTrue([result isEqualToString:@"V"], @"%@ should be V", result);
}


@end
