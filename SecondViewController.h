//
//  SecondViewController.h
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextDeleget.h"

@interface SecondViewController : UIViewController 
@property (weak, nonatomic) IBOutlet UILabel *MyLabel;

@property NSString *text;
@property id <ClearTextDeleget> myDelegate;

@end
