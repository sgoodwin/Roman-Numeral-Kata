//
//  GORomanNumeralFormatter.m
//  RomanNumeralsKata
//
//  Created by Samuel Goodwin on 1/22/12.
//  Copyright (c) 2012 SNAP Interactive. All rights reserved.
//

#import "GORomanNumeralFormatter.h"

@implementation GORomanNumeralFormatter

- (NSString *)stringFromNumber:(NSNumber *)number{
    NSArray *possibles = [NSArray arrayWithObjects:
                          [NSArray arrayWithObjects:@"X", [NSNumber numberWithInt:10], nil],
                          [NSArray arrayWithObjects:@"IX", [NSNumber numberWithInt:9], nil], 
                          [NSArray arrayWithObjects:@"V", [NSNumber numberWithInt:5], nil],
                          [NSArray arrayWithObjects:@"IV", [NSNumber numberWithInt:4], nil],
                          [NSArray arrayWithObjects:@"I", [NSNumber numberWithInt:1], nil], nil];
    
    NSMutableString *result = [NSMutableString string];
    __block NSInteger value = [number integerValue];
    [possibles enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSInteger arabic = [[obj objectAtIndex:1] integerValue];
        while(value >= arabic){
            [result appendString:[obj objectAtIndex:0]];
            value = value - arabic;
        }
    }];
    
    return result;
}

@end
