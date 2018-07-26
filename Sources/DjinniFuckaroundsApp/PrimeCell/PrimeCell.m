//
//  PrimeCell.m
//  DjinniFuckaroundsApp
//
//  Created by Isaac Weisberg on 7/26/18.
//

#import "PrimeCell.h"

@implementation PrimeCell

+ (NSString *) reusableIdentifier {
    return @"PrimeCell";
}

- (void) updateLabelWith:(NSString *) text {
    self.labelView.text = text;
}

@end
