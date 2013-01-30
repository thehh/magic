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

@synthesize p1MinusFiveBtn = _p1MinusFiveBtn;
@synthesize p1PlusFiveBtn = _p1PlusFiveBtn;
@synthesize p1MinusOneBtn = _p1MinusOneBtn;
@synthesize p1PlusOneBtn = _p1PlusOneBtn;

@synthesize p2MinusFiveBtn = _p2MinusFiveBtn;
@synthesize p2PlusFiveBtn = _p2PlusFiveBtn;
@synthesize p2MinusOneBtn = _p2MinusOneBtn;
@synthesize p2PlusOneBtn = _p2PlusOneBtn;

@synthesize p3MinusFiveBtn = _p3MinusFiveBtn;
@synthesize p3PlusFiveBtn = _p3PlusFiveBtn;
@synthesize p3MinusOneBtn = _p3MinusOneBtn;
@synthesize p3PlusOneBtn = _p3PlusOneBtn;

@synthesize p4MinusFiveBtn = _p4MinusFiveBtn;
@synthesize p4PlusFiveBtn = _p4PlusFiveBtn;
@synthesize p4MinusOneBtn = _p4MinusOneBtn;
@synthesize p4PlusOneBtn = _p4PlusOneBtn;

@synthesize resetBtn = _resetBtn;

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
    
    p1LivesView.numberOfLines = 0;
    p2LivesView.numberOfLines = 0;
    p3LivesView.numberOfLines = 0;
    p4LivesView.numberOfLines = 0;
    
    [p1LivesView sizeToFit];
    [p2LivesView sizeToFit];
    [p3LivesView sizeToFit];
    [p4LivesView sizeToFit];
    
    [_p1MinusFiveBtn useRedDeleteStyle];
    [_p1PlusFiveBtn useGreenConfirmStyle];
    [_p1MinusOneBtn useRedDeleteStyle];
    [_p1PlusOneBtn useGreenConfirmStyle];

    [_p2MinusFiveBtn useRedDeleteStyle];
    [_p2PlusFiveBtn useGreenConfirmStyle];
    [_p2MinusOneBtn useRedDeleteStyle];
    [_p2PlusOneBtn useGreenConfirmStyle];
    
    [_p3MinusFiveBtn useRedDeleteStyle];
    [_p3PlusFiveBtn useGreenConfirmStyle];
    [_p3MinusOneBtn useRedDeleteStyle];
    [_p3PlusOneBtn useGreenConfirmStyle];
    
    [_p4MinusFiveBtn useRedDeleteStyle];
    [_p4PlusFiveBtn useGreenConfirmStyle];
    [_p4MinusOneBtn useRedDeleteStyle];
    [_p4PlusOneBtn useGreenConfirmStyle];
    
    [_resetBtn useWhiteActionSheetStyle];
    
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
        p1LivesView.enabled = NO;
        _p1MinusFiveBtn.userInteractionEnabled = NO;
        _p1MinusFiveBtn.userInteractionEnabled = NO;
        _p1PlusFiveBtn.userInteractionEnabled = NO;
        _p1PlusOneBtn.userInteractionEnabled = NO;
        _p1MinusOneBtn.userInteractionEnabled = NO;
        p1Lives = 0;
        p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    }

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
    
    if(p2Lives < 1){
        p2LivesView.enabled = NO;
        _p2MinusFiveBtn.userInteractionEnabled = NO;
        _p2MinusFiveBtn.userInteractionEnabled = NO;
        _p2PlusFiveBtn.userInteractionEnabled = NO;
        _p2PlusOneBtn.userInteractionEnabled = NO;
        _p2MinusOneBtn.userInteractionEnabled = NO;
        p2Lives = 0;
        p2LivesView.text = [NSString stringWithFormat:@"%d", p2Lives];
    }
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
    
    if(p3Lives < 1){
        p3LivesView.enabled = NO;
        _p3MinusFiveBtn.userInteractionEnabled = NO;
        _p3MinusFiveBtn.userInteractionEnabled = NO;
        _p3PlusFiveBtn.userInteractionEnabled = NO;
        _p3PlusOneBtn.userInteractionEnabled = NO;
        _p3MinusOneBtn.userInteractionEnabled = NO;
        p3Lives = 0;
        p3LivesView.text = [NSString stringWithFormat:@"%d", p3Lives];
    }
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
    
    if(p4Lives < 1){
        p4LivesView.enabled = NO;
        _p4MinusFiveBtn.userInteractionEnabled = NO;
        _p4MinusFiveBtn.userInteractionEnabled = NO;
        _p4PlusFiveBtn.userInteractionEnabled = NO;
        _p4PlusOneBtn.userInteractionEnabled = NO;
        _p4MinusOneBtn.userInteractionEnabled = NO;
        p4Lives = 0;
        p4LivesView.text = [NSString stringWithFormat:@"%d", p4Lives];
    }
    
}

// Plus 5 methods

- (IBAction)plusFiveP1:(id)sender;
{
    p1Lives += 5;
    p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    if(p1Lives < 1){
        p1LivesView.enabled = NO;
    }
    else
        p1LivesView.enabled = true;
}

-(IBAction)minusFiveP1:(id)sender;
{
    p1Lives -= 5;
    p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];

    if(p1Lives < 1){
        p1LivesView.enabled = NO;
        _p1MinusFiveBtn.userInteractionEnabled = NO;
        _p1MinusFiveBtn.userInteractionEnabled = NO;
        _p1PlusFiveBtn.userInteractionEnabled = NO;
        _p1PlusOneBtn.userInteractionEnabled = NO;
        _p1MinusOneBtn.userInteractionEnabled = NO;
        p1Lives = 0;
        p1LivesView.text = [NSString stringWithFormat:@"%d", p1Lives];
    }
    
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
    
    if(p2Lives < 1){
        p2LivesView.enabled = NO;
        _p2MinusFiveBtn.userInteractionEnabled = NO;
        _p2MinusFiveBtn.userInteractionEnabled = NO;
        _p2PlusFiveBtn.userInteractionEnabled = NO;
        _p2PlusOneBtn.userInteractionEnabled = NO;
        _p2MinusOneBtn.userInteractionEnabled = NO;
        p2Lives = 0;
        p2LivesView.text = [NSString stringWithFormat:@"%d", p2Lives];
    }
    
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
    
    if(p3Lives < 1){
        p3LivesView.enabled = NO;
        _p3MinusFiveBtn.userInteractionEnabled = NO;
        _p3MinusFiveBtn.userInteractionEnabled = NO;
        _p3PlusFiveBtn.userInteractionEnabled = NO;
        _p3PlusOneBtn.userInteractionEnabled = NO;
        _p3MinusOneBtn.userInteractionEnabled = NO;
        p3Lives = 0;
        p3LivesView.text = [NSString stringWithFormat:@"%d", p3Lives];
    }
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
    if(p4Lives < 1){
        p4LivesView.enabled = NO;
        _p4MinusFiveBtn.userInteractionEnabled = NO;
        _p4MinusFiveBtn.userInteractionEnabled = NO;
        _p4PlusFiveBtn.userInteractionEnabled = NO;
        _p4PlusOneBtn.userInteractionEnabled = NO;
        _p4MinusOneBtn.userInteractionEnabled = NO;
        p4Lives = 0;
        p4LivesView.text = [NSString stringWithFormat:@"%d", p4Lives];
    }
}

-(IBAction)reset:(id)sender;
{
    p1Lives = p2Lives = p3Lives = p4Lives = 20;
    p1LivesView.text = p2LivesView.text = p3LivesView.text = p4LivesView.text = [NSString stringWithFormat:@"%d", 20];
    
    p1LivesView.enabled = YES;
    _p1MinusFiveBtn.userInteractionEnabled = YES;
    _p1MinusFiveBtn.userInteractionEnabled = YES;
    _p1PlusFiveBtn.userInteractionEnabled = YES;
    _p1PlusOneBtn.userInteractionEnabled = YES;
    _p1MinusOneBtn.userInteractionEnabled = YES;
    
    p2LivesView.enabled = YES;
    _p2MinusFiveBtn.userInteractionEnabled = YES;
    _p2MinusFiveBtn.userInteractionEnabled = YES;
    _p2PlusFiveBtn.userInteractionEnabled = YES;
    _p2PlusOneBtn.userInteractionEnabled = YES;
    _p2MinusOneBtn.userInteractionEnabled = YES;
    
    p3LivesView.enabled = YES;
    _p3MinusFiveBtn.userInteractionEnabled = YES;
    _p3MinusFiveBtn.userInteractionEnabled = YES;
    _p3PlusFiveBtn.userInteractionEnabled = YES;
    _p3PlusOneBtn.userInteractionEnabled = YES;
    _p3MinusOneBtn.userInteractionEnabled = YES;
    
    p4LivesView.enabled = YES;
    _p4MinusFiveBtn.userInteractionEnabled = YES;
    _p4MinusFiveBtn.userInteractionEnabled = YES;
    _p4PlusFiveBtn.userInteractionEnabled = YES;
    _p4PlusOneBtn.userInteractionEnabled = YES;
    _p4MinusOneBtn.userInteractionEnabled = YES;

}


@end
