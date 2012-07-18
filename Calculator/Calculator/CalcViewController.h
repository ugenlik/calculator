//
//  CalcViewController.h
//  Calculator
//
//  Created by umut can genlik on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface CalcViewController : UIViewController

{
    IBOutlet id displayField;
    Calculator *_calculator;
}

-(IBAction)press:(id)sender;


@end
