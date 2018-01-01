/**
 
 
 
A Zesty Intrepretation;
 I knew I was going to make this class so I did it in terminal then I cleaned up the AppDataCon and the model so that this is what gazinta the Actual application and the Library items are sterilized from retyping
 I am slightly tempted to boilerplate a save in there but I want to wrap the save: for two reasons bing able to pass an in-mem or save MOC to it and second for testing this means that after it passes test in the wrapper I can keep it in the Ajax.h without changing the test coverage in the Lib
 
I might
*/

#import "KDVApplicationDataController.h"
#import "KDVAjaxEntity+CoreDataClass.h"

@interface KDVAjaxDataController : KDVApplicationDataController

- (id)createEntity;
- (int)makeRandomNumber:(int)range;
- (int)makeRandomNumberCurve:(int)rolls :(int)range;

@end

