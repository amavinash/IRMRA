//
//  RegisterViewController.m
//  IRMRA
//
//  Created by Avinash Bhandarkar on 5/5/16.
//  Copyright © 2016 Avinash Bhandarkar. All rights reserved.
//

#import "RegisterViewController.h"
#import "Constants.h"

@implementation RegisterViewController

//textfieldForName
UITextField *currentTextfield;
UITextView *currentTextView;

-(void)viewDidLoad
{
    [super viewDidLoad];
//    UIColor *myColor = [UIColor colorWithRed:47.0f green:125.0f blue:49.0f alpha:1.0];
//    [self.navigationController.navigationBar setBarTintColor:myColor];
//    [[UINavigationBar appearance] setTranslucent:NO];
    self.title = @"REGISTER";
    //[self setupInputAccessoryViewForTextField];
    self.LableForDisclaimer.text = REGISTER_DISCLAIMER;
    [self setupInputAccessoryViewForTextView];
    self.textViewRegisteredOfficeAddress.delegate = self;
    self.textViewCorrespondenceAddress.delegate = self;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];

}

#pragma mark
#pragma TextField methods
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    currentTextfield = textField;
    [self setupInputAccessoryViewForTextField:textField];
    //textField.delegate = self;
}

#pragma mark
#pragma TextView methods

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    currentTextView = textView;
    textView.delegate = self;
}

#pragma mark
#pragma Keyboard methods

-(void)setupInputAccessoryViewForTextField:(UITextField*)textField
{
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    toolbar.barStyle = UIBarStyleDefault;
    toolbar.items = [NSArray arrayWithObjects:
                     [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                     [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(doneWithTypingInTextField)], nil];
    [toolbar sizeToFit];
    textField.inputAccessoryView = toolbar;
    
}

//-(void)setupInputAccessoryViewForTextField
//{
//    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
//    toolbar.barStyle = UIBarStyleDefault;
//    toolbar.items = [NSArray arrayWithObjects:
//                     [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
//                     [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(doneWithTypingInTextField)], nil];
//    [toolbar sizeToFit];
//    self.textfieldForName.inputAccessoryView = toolbar;
// 
//}

-(void)setupInputAccessoryViewForTextView
{
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    toolbar.barStyle = UIBarStyleDefault;
    toolbar.items = [NSArray arrayWithObjects:
                     [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                     [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(doneWithTyping)], nil];
    [toolbar sizeToFit];
//    currentTextView.inputAccessoryView = toolbar;
    self.textViewRegisteredOfficeAddress.inputAccessoryView = toolbar;
    self.textViewCorrespondenceAddress.inputAccessoryView = toolbar;
}

-(void)doneWithTypingInTextField
{
    [currentTextfield resignFirstResponder];
}

-(void)doneWithTyping
{
    [currentTextView resignFirstResponder];
}

-(void)keyboardWasShown:(NSNotification*)aNotification
{
    NSDictionary *info = [aNotification userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect aRect = self.view.frame;
    aRect.size.height -= kbSize.height;
    aRect.size.height -= 50;
    if (!CGRectContainsPoint(aRect, currentTextView.frame.origin)) {
        
        CGPoint scrollPoint = CGPointMake(0.0,kbSize.height + 64 + 50 - currentTextView.frame.origin.y);
        [self.scrollView setContentOffset:scrollPoint animated:YES];
    }
}

-(void)keyboardWillBeHidden:(NSNotification*)aNotification
{
    [self.scrollView setContentOffset:CGPointMake(0,-64) animated:YES];
}

@end
