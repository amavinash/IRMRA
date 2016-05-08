//
//  ViewController.m
//  IRMRA
//
//  Created by Avinash Bhandarkar on 5/5/16.
//  Copyright © 2016 Avinash Bhandarkar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize backgroundImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Background image for the view
    NSNumber *screenHeight = @([UIScreen mainScreen].bounds.size.height);
    NSString *imageName = [NSString stringWithFormat:@"Logon_backgroundImage-%@h.jpg", screenHeight];
    UIImage *image = [UIImage imageNamed:imageName];
    [self.backgroundImage setImage:image];
    [self.view sendSubviewToBack:self.backgroundImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

- (IBAction)RegisterButtonTapped:(id)sender {
}

- (IBAction)LoginButtonTappned:(id)sender {
}
@end
