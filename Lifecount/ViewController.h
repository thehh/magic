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
    
    UIButton *p1PlusFiveBtn;
    UIButton *p1MinusFiveBtn;
    UIButton *p1PlusOneBtn;
    UIButton *p1MinusOneBtn;
    
    UIButton *p2PlusFiveBtn;
    UIButton *p2MinusFiveBtn;
    UIButton *p2PlusOneBtn;
    UIButton *p2MinusOneBtn;
    
    UIButton *p3PlusFiveBtn;
    UIButton *p3MinusFiveBtn;
    UIButton *p3PlusOneBtn;
    UIButton *p3MinusOneBtn;
    
    UIButton *p4PlusFiveBtn;
    UIButton *p4MinusFiveBtn;
    UIButton *p4PlusOneBtn;
    UIButton *p4MinusOneBtn;
    
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

@property(retain) IBOutlet UIButton *p1PlusFiveBtn;
@property(retain) IBOutlet UIButton *p1MinusFiveBtn;
@property(retain) IBOutlet UIButton *p1PlusOneBtn;
@property(retain) IBOutlet UIButton *p1MinusOneBtn;

@property(retain) IBOutlet UIButton *p2PlusFiveBtn;
@property(retain) IBOutlet UIButton *p2MinusFiveBtn;
@property(retain) IBOutlet UIButton *p2PlusOneBtn;
@property(retain) IBOutlet UIButton *p2MinusOneBtn;

@property(retain) IBOutlet UIButton *p3PlusFiveBtn;
@property(retain) IBOutlet UIButton *p3MinusFiveBtn;
@property(retain) IBOutlet UIButton *p3PlusOneBtn;
@property(retain) IBOutlet UIButton *p3MinusOneBtn;

@property(retain) IBOutlet UIButton *p4PlusFiveBtn;
@property(retain) IBOutlet UIButton *p4MinusFiveBtn;
@property(retain) IBOutlet UIButton *p4PlusOneBtn;
@property(retain) IBOutlet UIButton *p4MinusOneBtn;

@end
