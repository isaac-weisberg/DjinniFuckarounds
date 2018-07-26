//
//  PrimeCell.h
//  DjinniFuckaroundsApp
//
//  Created by Isaac Weisberg on 7/26/18.
//

#import <UIKit/UIKit.h>

@interface PrimeCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *labelView;

+ (NSString *) reusableIdentifier;
- (void) updateLabelWith:(NSString *) text;

@end
