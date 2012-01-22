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

- (void)testVI{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:6]];
    STAssertTrue([result isEqualToString:@"VI"], @"%@ should be VI", result);
}

- (void)testVII{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:7]];
    STAssertTrue([result isEqualToString:@"VII"], @"%@ should be VII", result);
}

- (void)testVIII{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:8]];
    STAssertTrue([result isEqualToString:@"VIII"], @"%@ should be VIII", result);
}

- (void)testIX{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:9]];
    STAssertTrue([result isEqualToString:@"IX"], @"%@ should be IX", result);
}

- (void)testX{
    NSString *result = [self.formatter stringFromNumber:[NSNumber numberWithInt:10]];
    STAssertTrue([result isEqualToString:@"X"], @"%@ should be X", result);
}

@end
