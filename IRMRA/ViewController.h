//
//  ViewController.h
//  IRMRA
//
//  Created by Avinash Bhandarkar on 5/5/16.
//  Copyright © 2016 Avinash Bhandarkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;

@property (weak, nonatomic) IBOutlet UIButton *LoginButtonTapped;

- (IBAction)RegisterButtonTapped:(id)sender;
- (IBAction)LoginButtonTappned:(id)sender;

@end

