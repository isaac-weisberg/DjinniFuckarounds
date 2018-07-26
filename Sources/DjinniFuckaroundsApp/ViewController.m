//
//  ViewController.m
//  DjinniFuckaroundsApp
//
//  Created by Isaac Weisberg on 7/26/18.
//

#import "ViewController.h"
#import "PrimeCell.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.primeNumbers = [NSArray init];
    self.primeCellIdentifier = @"PrimeCell";
    [self.collectionView setDataSource: self];
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    PrimeCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: [PrimeCell reusableIdentifier] forIndexPath: indexPath];
    NSString* value = self.primeNumbers[indexPath.row];
    [cell updateLabelWith: value];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.primeNumbers.count;
}
@end
