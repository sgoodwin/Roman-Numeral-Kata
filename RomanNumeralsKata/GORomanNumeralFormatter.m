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
    NSDictionary *possibles = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"X", [NSNumber numberWithInt:10], 
                               @"IX", [NSNumber numberWithInt:9], 
                               @"V", [NSNumber numberWithInt:5],
                               @"IV", [NSNumber numberWithInt:4],
                               @"I", [NSNumber numberWithInt:1], nil];
    
    NSMutableString *result = [NSMutableString string];
    __block NSInteger value = [number integerValue];
    [possibles enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSInteger arabic = [key integerValue];
        while(value >= arabic){
            [result appendString:obj];
            value = value - arabic;
        }
    }];
    
    return result;
}

@end
