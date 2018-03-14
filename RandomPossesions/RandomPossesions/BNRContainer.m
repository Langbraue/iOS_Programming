//
//  BNRContainer.m
//  RandomPossesions
//
//  Created by Sebastian Petrausch on 14.03.18.
//  Copyright © 2018 Sebastian Petrausch. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer
// class methods
// initializers
- (id) initWithContainerValue:(int)contValue
{
    self = [super initWithItemName:@"Container" valueInDollars:contValue serialNumber:@""];
    if (self) {
        subitems = [[NSMutableArray alloc] init];
    }
    return self;
}
// instance methods
- (NSMutableArray *) listOfAllItems
{
    return [subitems copy];
}
- (void) addItem:(NSObject *)item
{
    [subitems addObject:item];
}
- (NSString *) removeItemWithSerialNumber:(NSString *)snumber
{
    //loop and find serial number, merke index, lösche index
    NSString * serialNumberAtIndex;
    for(int i = 0; i < [subitems count]; i++){
        serialNumberAtIndex = [[subitems objectAtIndex:i] serialNumber];
        if(serialNumberAtIndex == snumber){
            [subitems removeObjectAtIndex:i];
            break;
        }
    }
    return serialNumberAtIndex;
}
- (int) valueForAllItems
{
    // add container and all subitems values
    int valueAllItems = [self valueInDollars];
    for(int i = 0; i < [subitems count]; i++){
        valueAllItems += [[subitems objectAtIndex:i] valueInDollars];
    }
    return valueAllItems;
}
// accessors
@end
