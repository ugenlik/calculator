//
//  CalculatorAppDelegate_iPhone.h
//  Calculator
//
//  Created by umut can genlik on 9/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalcViewController;

@interface CalculatorAppDelegate_iPhone : NSObject <UIApplicationDelegate>
{
    IBOutlet UIWindow *window;
    CalcViewController *calcViewController;
}

@property (nonatomic,retain)UIWindow *window;
@property (nonatomic,retain)CalcViewController *calcViewController;

@end
