//
//  TableViewController.h
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextDeleget.h"

@interface TableViewController : UITableViewController <ClearTextDeleget>
@property NSMutableArray *males, *females;
@end
