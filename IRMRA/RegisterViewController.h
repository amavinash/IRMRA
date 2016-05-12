//
//  RegisterViewController.h
//  IRMRA
//
//  Created by Avinash Bhandarkar on 5/5/16.
//  Copyright © 2016 Avinash Bhandarkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController <UITextFieldDelegate,UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textfieldForName;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForEmail;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForPassword;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForDateOfEst;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForTypeOfOrg;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForNatureOfBusiness;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForProprietorName;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForAnnualConsumption;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForGrossTurnover;
@property (weak, nonatomic) IBOutlet UITextField *textfieldForAccountingYear;

@property (weak, nonatomic) IBOutlet UITextView *textViewRegisteredOfficeAddress;
@property (weak, nonatomic) IBOutlet UITextView *textViewCorrespondenceAddress;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UILabel *LableForDisclaimer;

@end
