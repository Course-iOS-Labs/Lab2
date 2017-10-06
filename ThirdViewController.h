//
//  ThirdViewController.h
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextDeleget.h"

@interface ThirdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@property bool showAddButton;
@property Person *person;
@property id <ClearTextDeleget> myDelegate;
@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *ageLabel;
@property (weak, nonatomic) IBOutlet UITextField *emailLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneLabel;
@property (weak, nonatomic) IBOutlet UITextField *addressLabel;
@property (weak, nonatomic) IBOutlet UISwitch *genderLabel;

@end
