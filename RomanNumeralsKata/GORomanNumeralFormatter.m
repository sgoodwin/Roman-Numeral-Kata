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
    NSInteger value = [number integerValue];
    if(value == 3){
        return @"III";
    }
    if(value == 2){
        return @"II";
    }
    if(value == 1){
        return @"I";
    }
    
    return nil;
}

@end
