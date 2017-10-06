//
//  ClearTextDeleget.h
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol ClearTextDeleget <NSObject>
-(void) clearText;
-(void) addPerson: (Person*) person : (bool) gender;

@end
