/**
  KDVApplicationDataController.h
  Ajax01

  Created by Kenn Villegas on 12/23/17.
  Copyright © 2017 Kenn Villegas. All rights reserved.

*/
#import "KDVAbstractDataController.h"
#import "KDVApplicationEntity+CoreDataClass.h"

@interface KDVApplicationDataController : KDVAbstractDataController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchCon;
- (instancetype)initAllUp;


- (NSMutableArray *)getEntities:(NSString *)entityName sortedBy:(NSSortDescriptor *)sortDescriptor matchingPredicate:(NSPredicate *)predicate;

- (NSMutableArray *)getAllEntities;

- (NSMutableArray *)getEntitiesMatchingPredicate: (NSPredicate *)p;

- (NSMutableArray *)getEntitiesMatchingPredicateString: (NSString *)predicateString, ...;

- (NSMutableArray *)getEntities:(NSString *)entityName
                       sortedBy:(NSSortDescriptor *)sortDescriptor
        matchingPredicateString:(NSString *)predicateString, ...;


- (void)deleteEntity:(NSManagedObject *)e; 
@end
