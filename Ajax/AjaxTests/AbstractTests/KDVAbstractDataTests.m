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
/*
Hmm, to test the Abstract controller I don't need anything hella special but to test the Application data I need to know the difference between NSManagedObjed and KDVAbstractEntity, and also ApplicationEntity - Both of these are intended to be empty
*/
#import <XCTest/XCTest.h>
#import "KDVAbstractDataController.h"

@interface KDVAbstractDataTests : XCTestCase
@property (nonatomic, strong)KDVAbstractDataController *SUT;
@property(strong,nonatomic)NSPersistentStoreCoordinator *jivePSK;
@end

@implementation KDVAbstractDataTests
@synthesize SUT = _SUT;
@synthesize jivePSK = _jivePSK;

- (void)setupInMemPSK
{
  //https://stackoverflow.com/questions/43625748/unit-testing-with-core-data-in-objective-c
  //xcdatamodel
  NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Ajax" withExtension:@"momd"];
  //  NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Anubis" withExtension:@"xcdatamodel"];
  NSManagedObjectModel *_mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
  NSPersistentStoreCoordinator *_psk = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:_mom];
  XCTAssertTrue([_psk addPersistentStoreWithType:NSInMemoryStoreType configuration:nil URL:nil options:nil error:NULL] ? YES : NO, @"Should be able to add in-memory store");
  
  NSManagedObjectContext *_ctx = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
  _ctx.persistentStoreCoordinator = _psk;
  [self setJivePSK:(_psk)];
}
- (void)setUp {
  [super setUp];
  [self setupInMemPSK];
  [self setSUT:[[KDVAbstractDataController alloc]init]];
//  [[self SUT]setMOC:self.jivePSK.v]
}

- (void)tearDown {
  [self setSUT:nil];
  [self setJivePSK:nil];
  [super tearDown];
}

- (void)testADC {
  XCTAssert([[self SUT]isMemberOfClass:[KDVAbstractDataController class]]);
  XCTAssertNotNil([[self SUT]applicationName]);
  XCTAssert([[[self SUT]applicationName]isEqualToString:@"Ajax"]);
  XCTAssert([[[self SUT]databaseName]isEqualToString:@"Ajax.sqlite"]);
  
}

- (void)testZero {
  [self setSUT:nil];
  XCTAssertNil([self SUT]);
  KDVAbstractDataController * bitch = [[KDVAbstractDataController alloc]init];
  XCTAssertNotNil([bitch MOM]);
  XCTAssertNotNil([bitch MOC]);
  XCTAssertNotNil([bitch PCONT]);
  XCTAssertNotNil([bitch fetchCon]);
  XCTAssertTrue([bitch copyDatabaseIfNotPresent]);
  
}

- (void)testOne {
  XCTAssertNotNil([self SUT]);
  XCTAssertNotNil([self jivePSK]);
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
