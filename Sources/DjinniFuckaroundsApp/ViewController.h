//
//  ViewController.h
//  DjinniFuckaroundsApp
//
//  Created by Isaac Weisberg on 7/26/18.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource>

@property (strong, nonatomic) NSOperationQueue* operationQueue;
@property (strong, nonatomic) NSOperation* operation;
@property (strong, nonatomic) DFDjinniFuckaroundsAbstract* primeCreator;
@property (strong, nonatomic) NSArray* primeNumbers;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
