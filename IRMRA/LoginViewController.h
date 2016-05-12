//
//  LoginViewController.h
//  IRMRA
//
//  Created by Avinash Shantaram Bhandarkar on 12/05/16.
//  Copyright © 2016 Avinash Bhandarkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldForUserName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldForPassword;

- (IBAction)submitButtonTapped:(id)sender;

@end
