//
//  TFOibValidator.m
//
//  Created by Tomislav Filipcic on 1/08/14.
//  Copyright (c) 2014 Tomislav Filipcic. All rights reserved.
//

#import "TFOibValidator.h"
#import "NSError+REValidation.h"

@implementation TFOibValidator

+ (NSString *)name
{
    return @"oib";
}

+ (NSError *)validateObject:(NSString *)object variableName:(NSString *)name parameters:(NSDictionary *)parameters
{
    NSString *string = object ? object : @"";

    if (![REOIBValidator verifyOib:string])
        return [NSError re_validationErrorForDomain:@"com.REValidation.oib", name];

    return nil;
}

+ (BOOL)verifyOib:(NSString*)oib
{
	if (oib.length != 11) return false;

	int a = 10;
	for (int i=0; i<10; i++)
	{

		a += [[oib substringWithRange:NSMakeRange(i, 1)] intValue];
		a %= 10;
		if (a == 0) a = 10;
		a *= 2;
		a %= 11;
	}

	int control = 11 - a;
	if (control == 10) control  = 0;

	return control == [[oib substringWithRange:NSMakeRange(10, 1)] intValue];

}

@end
