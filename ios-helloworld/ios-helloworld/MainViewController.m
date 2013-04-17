//
//  MainViewController.m
//  ios-helloworld
//
//  Created by Vienna on 13-04-17.
//  Copyright (c) 2013 OrganizationName. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *label;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /* TEXT FIELD */
    
    // create textfield
    self.textField = [[UITextField alloc]
                      initWithFrame: CGRectMake(10.0f, 30.0f,300.0f, 30.0f)];
  
    self.textField.delegate = self;
    // set border to show on screen
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    // add textfield to main view
    [self.view addSubview:self.textField];
    
    
    /* BUTTON */
    
    //initialize the button with the default, rounded rect type
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //set frame
    button.frame = CGRectMake(110.0f, 200.0f, 100.0f, 30.0f);
    
    //set target, action, and control event.
    [button addTarget:self
               action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchUpInside];
    
    //set title
    [button setTitle:@"Say Hello" forState:UIControlStateNormal];
    
    //add button to main view
    [self.view addSubview:button];
    
    /* LABEL */
    
    self.label = [[UILabel alloc]
                  initWithFrame:CGRectMake(115.0f, 150.0f, 200.0f, 30.0f)];
    self.label.text = @"Enter your name above.";
    [self.view addSubview:self.label];
    
}
- (void)buttonPressed {
    
    NSString *helloString = @"Hello ";
    
    // set label
    if ( self.textField.text != nil)
    {
        self.label.text = [helloString stringByAppendingString:(self.textField.text)];
    } else {
    self.label.text = @"Bazinga!";
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    //remove keyboard from the forefront
    [textField resignFirstResponder];
    
    //no linebreak afterwards
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
