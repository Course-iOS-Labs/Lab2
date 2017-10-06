//
//  Person.m
//  lab3
//
//  Created by excel on 10/5/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id) initWithName:(NSString *)name andPhone:(NSString *)phone andEmail:(NSString *)email andAge:(int)age andAddress:(NSString *)address {
    
    _address = address;
    _age = age;
    _name = name;
    _phone = phone;
    _email = email;
    
    return self;
}

@end
