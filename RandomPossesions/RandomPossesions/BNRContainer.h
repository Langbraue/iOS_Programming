//
//  BNRContainer.h
//  RandomPossesions
//
//  Created by Sebastian Petrausch on 14.03.18.
//  Copyright © 2018 Sebastian Petrausch. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{// instance variables
    NSMutableArray *subitems;
}
// class methods
// initializers
// instance methods
- (NSMutableArray *) listOfAllItems;
- (void) addItem:(NSObject *)item;
// returns the SerialNumber of the removed item, or nil if item not found
- (NSString *) removeItemWithSerialNumber:(NSString *)snumber;
- (int) valueForAllItems;
@end
//TODO: override description, value in dollars for all items and container
