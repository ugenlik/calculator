//
//  Calculator.h
//  Calculator
//
//  Created by umut can genlik on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Calculator : NSObject

{
    @private 
    NSMutableString *_display;
    double          _operand;
    NSString        *_operator;
    
}

-init;
-(void) dealloc;
-(void) input:(NSString *) character;
-(NSString *) displayValue;

@end
