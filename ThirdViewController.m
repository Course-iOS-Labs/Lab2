//
//  ThirdViewController.m
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    if(_person != nil) {
        [_nameLabel setText:_person.name];

        [_phoneLabel setText:_person.phone];
        [_emailLabel setText:_person.email];
        [_addressLabel setText:_person.address];
        [_saveButton setHidden:YES];
    }
    else {
        [_saveButton setHidden:NO];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)AddPerson:(id)sender {

    
    printf("%s", [@"here" UTF8String]);
//    
    Person *newPerson = [[Person alloc] initWithName:[_nameLabel text] andPhone:[_phoneLabel text] andEmail:[_emailLabel text] andAge:[[_ageLabel text] integerValue]  andAddress:[_addressLabel text]];

    
    printf("%s", [[newPerson name] UTF8String]);
    [_myDelegate addPerson:newPerson :[_genderLabel isOn]];

    [[self navigationController] popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
