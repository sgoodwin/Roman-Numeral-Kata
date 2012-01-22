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
    NSMutableString *result = [NSMutableString string];
    NSInteger value = [number integerValue];
    while(value >= 5){
        [result appendString:@"V"];
        value -= 5;
    }
    while(value >= 4){
        [result appendString:@"IV"];
        value -= 4;
    }
    while(value >= 1){
        [result appendString:@"I"];
        value--;
    }
    
    return result;
}

@end
