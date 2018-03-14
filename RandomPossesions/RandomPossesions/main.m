//
//  main.m
//  RandomPossesions
//
//  Created by Sebastian Petrausch on 06.03.18.
//  Copyright © 2018 Sebastian Petrausch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Rosa Sofa"
                                        valueInDollars:0
                                          serialNumber:@"AD4E-3RBH-9IJS-OKD9-09PH"];
        NSLog(@"%@",p);
       
        items = nil;
        
    }
    return 0;
}
