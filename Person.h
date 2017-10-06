//
//  Person.h
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name, *email, *address, *phone;
@property int age;


-(id) initWithName: (NSString*) name andPhone: (NSString*) phone andEmail: (NSString*) email andAge: (int) age andAddress: (NSString*) address;
@end
