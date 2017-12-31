
#import "KDVAjaxDataController.h"

@implementation KDVAjaxDataController

- (instancetype)initAllUp {
  self = [self initWithAppName:@"Ajax"
                  databaseName:@"Ajax.sqlite"
                     className:@"KDVAjaxEntity"];
  if (self) {
    
  }
  return self;
}

@end
