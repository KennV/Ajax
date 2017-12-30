/**
  KDVAbstractDataTests.m
  AjaxTests

  Created by Kenn Villegas on 12/26/17.
  Copyright © 2017 Kenn Villegas. All rights reserved.

*/

/**
In the past I have written extensively about;
"Dont test the Library test the effect" (sic)
However in this case as I am writing the lib that uses a Lib the effect is the Lib actual. Meaning that this test class shall proof the init() and all of the basic state of this an abstract class. This is actually easy as all getup b\c
One, it is an abstract class

Two, Load/Save is one level deeper

And simply put I cannot test the saveContext in a real sense w\o writing a wrapper for it, such as +(bool)didSaveContext:(NSManagedContext*)ctx. Initially I thought that this might be suitable for a protocol. - - However as a +Class function one level deper {in the ApplicationLevelController} I do not need to put it in a protocol it is as much a _feature_ of this class as saveContext() is a feature of CoreData.

However in the Morning when I look at this class I will have no AbstractDataController as a SUT to init() or assert SUT.MOM, SUT.Coordinator, …PSK, …MOC etc…
This is the best feature. Because I can easily hit 80% coverage without wrapper functions on key CoreData utilities __But I *want* some soert of notification__ that save did run clean - as a bool or in a Deconstructed Tuple - with the save state as a return and optionally the object and maybe a pointer to a set/array of the rest of the interesting objects in a stack-frame
It is hella granular at this state
 
SO as much as I can dislike the term 'Asymtotic' as a constuct I can reach an Asymtotically high level of coverage on the above terms. And then 100% asymtotic coverage on derived classes
Now as more LOCs get written the coverage rate grows
*/

#import <XCTest/XCTest.h>

@interface KDVAbstractDataTests : XCTestCase

@end

@implementation KDVAbstractDataTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
//  XCTAssertNotNil(nil);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
