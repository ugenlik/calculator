//
//  Calculator.m
//  Calculator
//
//  Created by umut can genlik on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"


const NSString *operators = @"+-x/";
const NSString *Equals = @"=";
const NSString *Digits = @"0123456789.";
const NSString *Delete = @"D";
const NSString *Clear = @"C";

@implementation Calculator

-(NSString *) operator
{
    return _operator;
}

-(void) SetOperator : (NSString *) operator
{
    if(_operator!=operator)
    {
        [_operator release];
        _operator=[operator retain];
        
        
    }
}
-init
{
    if(self = [super init])
    {
        _display=[[NSMutableString stringWithCapacity:20]retain];
        _operator=nil;
        
    }
    return self;
}
-(void) dealloc
{
    [_display release];
    [_operator release];
    [super dealloc];
}
-(void) input:(NSString *) character
{
    static BOOL last_character_is_operator=NO;
    if([Digits rangeOfString:character].length)
    {
        if(last_character_is_operator)
        {
            [_display setString:character];
            last_character_is_operator=NO;
        }
        else if(![character isEqualToString:@"."] 
                ||[_display rangeOfString:@"."].location==NSNotFound)
        {
            [_display appendString:character];
            
        }
    }
    else if ([operators rangeOfString:character].length || 
             [character isEqualToString:(NSString*)Equals])
    {
        if(!_operator && ![character isEqualToString:(NSString*)Equals])
        {
            _operand = [[self displayValue] doubleValue];
            [self SetOperator:character];
        }
        else
        {
            if(_operator)
            {
                double operand2=[[self displayValue] doubleValue];
                switch ([operators rangeOfString:_operator].location)
                {
                    case 0:
                        _operand += operand2;
                        break;
                    case 1:
                        _operand -= operand2;
                        break;
                    case  2:
                        _operand *=operand2;
                        break;
                    case 3:
                        _operand /= operand2;
                        break;
                        
                        
                        default:
                        break;
                }
                [_display setString:[[NSNumber numberWithDouble:_operand] stringValue]];
            
            }
            [self SetOperator:([character isEqualToString:(NSString*)Equals])?nil:character];
        }
        last_character_is_operator=YES;
    }
    else if([character isEqualToString:(NSString*)Delete])
    {
        NSInteger index_of_char_to_remove=[_display length]-1;
        if(index_of_char_to_remove>=0)
        {
            [_display deleteCharactersInRange:NSMakeRange(index_of_char_to_remove, 1)];
            last_character_is_operator=NO;
        }
    }   
        else if([character isEqualToString:(NSString*)Clear]) 
        {
            if([_display length])
            {
                [_display setString:[NSString string]];
                
            }
            else
            {
                setOperator:nil;
            }
    }
}
-(NSString *) displayValue
{
    if([_display length])
    {
        return [[_display copy] autorelease];
    }
    return @"0";
}
@end