//
//  CalcViewController.m
//  Calculator
//
//  Created by umut can genlik on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalcViewController.h"

@implementation CalcViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]);
       {
    
       }
    _calculator =[Calculator new];
    return self;
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}    

-(void)dealloc 
{
        [_calculator release];
        [super dealloc];
}
   
-(IBAction) press:(id)sender
{
        [_calculator input:[sender titleForState:UIControlStateNormal]];
        [displayField setText:[_calculator displayValue]];
        
}



@end
