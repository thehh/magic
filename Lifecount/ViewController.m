//
//  ViewController.m
//  Lifecount
//
//  Created by Hector Horta on 1/18/13.
//  Copyright (c) 2013 Hector Horta. All rights reserved.
//

#import "ViewController.h"
#define buttonWidth 50
#define buttonHeight 20

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    p1Lives = 20;
    p2Lives = 20;
    p3Lives = 20;
    p4Lives = 20;
    
    p1LivesView.textColor = p2LivesView.textColor = p3LivesView.textColor = p4LivesView.textColor = [UIColor whiteColor];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.jpg"]];

    
    
    /*Botones Player 1*/
    /*
    UIButton *p1Plus5Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    p1Plus5Button.frame = CGRectMake(160, 15, buttonWidth, buttonHeight);
    [p1Plus5Button setTitle:@"+5" forState:UIControlStateNormal];
    [p1Plus5Button addTarget:self action:@selector(plusFiveP1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:p1Plus5Button];
    
    UIButton *p1Minus5Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    p1Minus5Button.frame = CGRectMake(110, 15, buttonWidth, buttonHeight);
    [p1Minus5Button setTitle:@"-5" forState:UIControlStateNormal];
    [p1Minus5Button addTarget:self action:@selector(minusFiveP1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:p1Minus5Button];
    */
    
    /*
     
     UIImage *buttonImage = [UIImage imageNamed:@"ic_tab_codigoQR_unselected.png"];
     UIImage *buttonImageSel = [UIImage imageNamed:@"ic_tab_codigoQR_selected.png"];
     UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
     [aButton setImage:buttonImage forState:UIControlStateNormal];
     [aButton setImage:buttonImageSel forState:UIControlEventTouchUpInside];
     aButton.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height);
     
     // Set the Target and Action for aButton
     [aButton addTarget:self action:@selector(readCodeButtonPressed) forControlEvents:UIControlEventTouchUpInside];
     
     */
	
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)plusOneP1:(id)sender;
{
    p1Lives += 1;
    p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
}

-(IBAction)minusOneP1:(id)sender;
{
    p1Lives -= 1;
    p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    if(p1Lives < 1){
        p1LivesView.enabled = false;
        [_p1MinusFiveBtn setEnabled:false];
        [_p1PlusFiveBtn setEnabled:false];
        [_p1PlusOneBtn setEnabled:false];
        [_p1MinusOneBtn setEnabled:false];
        p1Lives = 0;
        p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    }
    else
        p1LivesView.enabled = true;
}

- (IBAction)plusOneP2:(id)sender;
{
    p2Lives += 1;
    p2LivesView.text = [NSString stringWithFormat:@"%d", p2Lives];
}

-(IBAction)minusOneP2:(id)sender;
{
    p2Lives -= 1;
    p2LivesView.text = [NSString stringWithFormat:@"%d", p2Lives];
}

- (IBAction)plusOneP3:(id)sender;
{
    p3Lives += 1;
    p3LivesView.text = [NSString stringWithFormat:@"%d", p3Lives];
}

-(IBAction)minusOneP3:(id)sender;
{
    p3Lives -= 1;
    p3LivesView.text = [NSString stringWithFormat:@"%d", p3Lives];
}

- (IBAction)plusOneP4:(id)sender;
{
    p4Lives += 1;
    p4LivesView.text = [NSString stringWithFormat:@"%d", p4Lives];
}

-(IBAction)minusOneP4:(id)sender;
{
    p4Lives -= 1;
    p4LivesView.text = [NSString stringWithFormat:@"%d", p4Lives];
}

// Plus 5 methods

- (IBAction)plusFiveP1:(id)sender;
{
    p1Lives += 5;
    p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    if(p1Lives < 1){
        p1LivesView.enabled = false;
    }
    else
        p1LivesView.enabled = true;
}

-(IBAction)minusFiveP1:(id)sender;
{
    p1Lives -= 5;
    p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    if(p1Lives < 1){
        p1LivesView.enabled = false;
        [_p1MinusFiveBtn setEnabled:false];
        [_p1PlusFiveBtn setEnabled:false];
        [_p1PlusOneBtn setEnabled:false];
        [_p1MinusOneBtn setEnabled:false];
        p1Lives = 0;
        p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    }
    else
        p1LivesView.enabled = true;
}

- (IBAction)plusFiveP2:(id)sender;
{
    p2Lives += 5;
    p2LivesView.text = [NSString stringWithFormat:@"%d", p2Lives];
}

-(IBAction)minusFiveP2:(id)sender;
{
    p2Lives -= 5;
    p2LivesView.text = [NSString stringWithFormat:@"%d", p2Lives];
}

- (IBAction)plusFiveP3:(id)sender;
{
    p3Lives += 5;
    p3LivesView.text = [NSString stringWithFormat:@"%d", p3Lives];
}

-(IBAction)minusFiveP3:(id)sender;
{
    p3Lives -= 5;
    p3LivesView.text = [NSString stringWithFormat:@"%d", p3Lives];
}

- (IBAction)plusFiveP4:(id)sender;
{
    p4Lives += 5;
    p4LivesView.text = [NSString stringWithFormat:@"%d", p4Lives];
}

-(IBAction)minusFiveP4:(id)sender;
{
    p4Lives -= 5;
    p4LivesView.text = [NSString stringWithFormat:@"%d", p4Lives];
}

-(IBAction)reset
{
    p1Lives = p2Lives = p3Lives = p4Lives = 20;
    p1LivesView.text = p2LivesView.text = p3LivesView.text = p4LivesView.text = [NSString stringWithFormat:@"%d", 20];

}


@end
