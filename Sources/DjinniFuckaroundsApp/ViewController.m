//
//  ViewController.m
//  DjinniFuckaroundsApp
//
//  Created by Isaac Weisberg on 7/26/18.
//

#import "DFDjinniFuckaroundsAbstract.h"
#import "ViewController.h"
#import "PrimeCell.h"

NSInteger incrementOfTheBounds = 100;
NSInteger preLoadingDifferenceThreshold = 0;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.primeNumbers = @[];
    self.primeCreator = [DFDjinniFuckaroundsAbstract make];
    self.operationQueue = [NSOperationQueue new];
    self.operationQueue.maxConcurrentOperationCount = 1;
    self.primeCellIdentifier = @"PrimeCell";
    [self.collectionView setDataSource: self];
    [self requestMore];
}

- (nonnull __kindof UICollectionViewCell *) collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    PrimeCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: [PrimeCell reusableIdentifier] forIndexPath: indexPath];
    NSString* value = self.primeNumbers[indexPath.row];
    [cell updateLabelWith: value];
    if (indexPath.row + preLoadingDifferenceThreshold == self.primeNumbers.count - 1) {
        [self requestMore];
        NSLog(@"Have requested more stuff");
    }
    return cell;
}

- (NSInteger) collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.primeNumbers.count;
}

- (void) requestMore {
    if (self.operation != nil) {
        return;
    }
    NSInteger lowerBound = self.primeNumbers.count;
    NSInteger upperBound = lowerBound + incrementOfTheBounds;
    __weak ViewController* shelf = self;
    self.operation = [NSBlockOperation blockOperationWithBlock: ^{
        NSArray* array = @[];
        for (NSInteger i = lowerBound; i < upperBound; i++) {
            NSInteger result = [shelf.primeCreator getPrimeNumber: (int32_t)i];
            NSString* value = [@(result) stringValue];
            array = [array arrayByAddingObject:value];
        }
        shelf.primeNumbers = [shelf.primeNumbers arrayByAddingObjectsFromArray: array];
        [NSOperationQueue.mainQueue addOperationWithBlock: ^{ // FIXME: potential race condition
            [shelf.collectionView reloadData];
        }];
        shelf.operation = nil;
    }];
    [self.operationQueue addOperation: self.operation];
}

@end
