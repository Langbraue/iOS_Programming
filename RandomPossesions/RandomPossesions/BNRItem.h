//
//  BNRItem.h
//  RandomPossesions
//
//  Created by Sebastian Petrausch on 06.03.18.
//  Copyright © 2018 Sebastian Petrausch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{// instance variables
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}
// class methods
+ (id) randomItem;

// initializers
- (id) initWithItemName : (NSString *) name
         valueInDollars : (int) value
           serialNumber : (NSString *) snumber;

// methods and functions
- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)i;
- (int) valueInDollars;

- (NSDate *)dateCreated;

@end
