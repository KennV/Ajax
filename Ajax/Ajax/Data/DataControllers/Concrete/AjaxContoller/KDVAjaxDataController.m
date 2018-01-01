
#import "KDVAjaxDataController.h"

@implementation KDVAjaxDataController
@synthesize fetchCon = _fetchCon;

- (instancetype)initAllUp {
  self = [self initWithAppName:@"Ajax"
                  databaseName:@"Ajax.sqlite"
                     className:@"KDVAjaxEntity"];
  if (self) {
    
  }
  return self;
}
// Creates a new entity of the default type and adds it to the managed object context
- (KDVAjaxEntity *)createEntity
{
  KDVAjaxEntity * _AE = [NSEntityDescription insertNewObjectForEntityForName:([self entityClassName]) inManagedObjectContext:[self MOC]];
  KDVGraphicsEntity * g = [NSEntityDescription insertNewObjectForEntityForName:(@"KDVGraphicsEntity") inManagedObjectContext:[self MOC]];
  [_AE setGraphics:(g)];
  KDVPhysicsEntity * p = [NSEntityDescription insertNewObjectForEntityForName:(@"KDVPhysicsEntity") inManagedObjectContext:[self MOC]];
  [_AE setPhysics:(p)];
  KDVLocationEntity * l = [NSEntityDescription insertNewObjectForEntityForName:(@"KDVLocationEntity") inManagedObjectContext:[self MOC]];
  [_AE setLocation:(l)];

  return (_AE);
}

- (int)makeRandomNumber:(int)range
{
  return arc4random_uniform(range);
}
- (int)makeRandomNumberCurve:(int)rolls :(int)range
{
  int result = 0;
  if (rolls <=0)
  {
    return(result);
  }
  do
  {
    rolls -= 1;
    result += [self makeRandomNumber:(range)];
  } while (rolls > 0);
  return(result);
}


@end
