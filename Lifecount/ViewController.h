//
//  ViewController.h
//  Lifecount
//
//  Created by Hector Horta on 1/18/13.
//  Copyright (c) 2013 Hector Horta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int p1Lives;
    int p2Lives;
    int p3Lives;
    int p4Lives;
    
    IBOutlet UILabel *p1LivesView;
    IBOutlet UILabel *p2LivesView;
    IBOutlet UILabel *p3LivesView;
    IBOutlet UILabel *p4LivesView;
    
}

- (IBAction)plusOneP1:(id)sender;
- (IBAction)minusOneP1:(id)sender;
- (IBAction)plusFiveP1:(id)sender;
- (IBAction)minusFiveP1:(id)sender;

- (IBAction)plusOneP2:(id)sender;
- (IBAction)minusOneP2:(id)sender;
- (IBAction)plusFiveP2:(id)sender;
- (IBAction)minusFiveP2:(id)sender;

- (IBAction)plusOneP3:(id)sender;
- (IBAction)minusOneP3:(id)sender;
- (IBAction)plusFiveP3:(id)sender;
- (IBAction)minusFiveP3:(id)sender;

- (IBAction)plusOneP4:(id)sender;
- (IBAction)minusOneP4:(id)sender;
- (IBAction)plusFiveP4:(id)sender;
- (IBAction)minusFiveP4:(id)sender;

- (IBAction)reset:(id)sender;

@end
