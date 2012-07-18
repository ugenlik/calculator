//
//  CalculatorAppDelegate_iPhone.m
//  Calculator
//
//  Created by umut can genlik on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorAppDelegate_iPhone.h"
#import "CalcViewController.h"


@implementation CalculatorAppDelegate_iPhone


@synthesize window;
@synthesize calcViewController;



-(void)applicationDidFinishLaunching:(UIApplication *)application{
    
    CalcViewController *_calcViewContoller=
    [[CalcViewController alloc] initWithNibName:@"CalcView" bundle:nil];
    self.calcViewController = _calcViewContoller;
    [_calcViewContoller release];
    [window addSubview:[calcViewController view]];
    [window makeKeyAndVisible];
}

-(void)dealloc{
    
    [calcViewController release];
    [window release];
    [super dealloc];
    
    
}





@end
