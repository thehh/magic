//
//  ViewController.h
//  Lifecount
//
//  Created by Hector Horta on 1/18/13.
//  Copyright (c) 2013 Hector Horta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientButton.h"

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
    
    GradientButton *p1PlusFiveBtn;
    GradientButton *p1MinusFiveBtn;
    GradientButton *p1PlusOneBtn;
    GradientButton *p1MinusOneBtn;
    
    GradientButton *p2PlusFiveBtn;
    GradientButton *p2MinusFiveBtn;
    GradientButton *p2PlusOneBtn;
    GradientButton *p2MinusOneBtn;
    
    GradientButton *p3PlusFiveBtn;
    GradientButton *p3MinusFiveBtn;
    GradientButton *p3PlusOneBtn;
    GradientButton *p3MinusOneBtn;
    
    GradientButton *p4PlusFiveBtn;
    GradientButton *p4MinusFiveBtn;
    GradientButton *p4PlusOneBtn;
    GradientButton *p4MinusOneBtn;
    
    GradientButton *resetBtn;
    
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

@property(retain,nonatomic) IBOutlet GradientButton *p1PlusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p1MinusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p1PlusOneBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p1MinusOneBtn;

@property(retain,nonatomic) IBOutlet GradientButton *p2PlusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p2MinusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p2PlusOneBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p2MinusOneBtn;

@property(retain,nonatomic) IBOutlet GradientButton *p3PlusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p3MinusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p3PlusOneBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p3MinusOneBtn;

@property(retain,nonatomic) IBOutlet GradientButton *p4PlusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p4MinusFiveBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p4PlusOneBtn;
@property(retain,nonatomic) IBOutlet GradientButton *p4MinusOneBtn;

@property(retain,nonatomic) IBOutlet GradientButton *resetBtn;

@end
