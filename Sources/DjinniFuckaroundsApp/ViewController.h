//
//  ViewController.h
//  DjinniFuckaroundsApp
//
//  Created by Isaac Weisberg on 7/26/18.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource>

@property (strong, nonatomic) NSArray* primeNumbers;
@property (strong, nonatomic) NSString* primeCellIdentifier;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
