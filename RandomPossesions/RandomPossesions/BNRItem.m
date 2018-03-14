//
//  BNRItem.m
//  RandomPossesions
//
//  Created by Sebastian Petrausch on 06.03.18.
//  Copyright © 2018 Sebastian Petrausch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
// class methods
+ (id) randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                                             @"Shiny",
                                                             @"Rusty",
                                                             nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                                                        @"Spock",
                                                        @"Mac",
                                                        nil];
    
    NSInteger randomAdjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger randomNounIndex      = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:randomAdjectiveIndex],
                            [randomNounList objectAtIndex:randomNounIndex]];
    
    int randomValueBetweenZeroAndOneHundred = rand() % 100;
    
    NSString *randdomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                     '0' + rand() % 10,
                                     'A' + rand() % 26,
                                     '0' + rand() % 10,
                                     'A' + rand() % 26,
                                     '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValueBetweenZeroAndOneHundred
                                         serialNumber:randdomSerialNumber];
    return newItem;
}
// initializers
- (id) initWithItemName:(NSString *)name
         valueInDollars:(int)value
           serialNumber:(NSString *)snumber
{
    self = [super init];
    if (self) {
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:snumber];
        dateCreated = [NSDate date];
    }
    return self;
}
- (id) init
{
    return [self initWithItemName:@"Item"
                   valueInDollars:0
                     serialNumber:@""];
}
- (id) initWithNameAndSerialnumber:(NSString *)name
                      serialNumber:(NSString *)snumber
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:snumber];
}
// other methods
-(NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): worth $%d, recorded on %@",
                                    itemName,
                                    serialNumber,
                                    valueInDollars,
                                    dateCreated];
    return descriptionString;
}
// accessors
- (void)setItemName:(NSString *)str
{
    itemName = str;
}

- (NSString *)itemName
{
    return itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}

@end
