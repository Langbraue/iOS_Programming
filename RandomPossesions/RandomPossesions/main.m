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
        
        for (int i=0; i < 10; i++){
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        NSLog(@"%@", [[BNRItem alloc] initWithNameAndSerialnumber:@"Klappt"
                                                     serialNumber:@"a9g7b5"]);
        items = nil;
        
    }
    return 0;
}
