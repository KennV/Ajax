/**
KDVApplicationDataTests.m
AjaxTests

Created by Kenn Villegas on 12/30/17.
Copyright © 2017 Kenn Villegas. All rights reserved.

Flying Bitch Tits
Doing this from a touch file
*/

#import <XCTest/XCTest.h>
#import "KDVApplicationDataController.h"
@interface KDVApplicationDataTests : XCTestCase
@property(strong,nonatomic)NSPersistentStoreCoordinator *memCoord;

@end

@implementation KDVApplicationDataTests
@synthesize memCoord = _memCoord;

- (void)setupInMemPSK {
  //https://stackoverflow.com/questions/43625748/unit-testing-with-core-data-in-objective-c
  //xcdatamodel
  NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Ajax" withExtension:@"momd"];
  //  NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Anubis" withExtension:@"xcdatamodel"];
  NSManagedObjectModel *_mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
  NSPersistentStoreCoordinator *_psk = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:_mom];
  XCTAssertTrue([_psk addPersistentStoreWithType:NSInMemoryStoreType configuration:nil URL:nil options:nil error:NULL] ? YES : NO, @"Should be able to add in-memory store");
  
  NSManagedObjectContext *_ctx = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
  _ctx.persistentStoreCoordinator = _psk;
  [self setMemCoord:(_psk)];
}

- (void)setUp {
  [super setUp];
  [self setupInMemPSK];
}

- (void)tearDown {
  [self setMemCoord:(nil)];
  [super tearDown];
}

- (void)testADC {
  [self setMemCoord:(nil)];
  KDVApplicationDataController *adc = [[KDVApplicationDataController alloc]initAllUp];
  XCTAssertNotNil(adc);
  XCTAssertNotNil([adc MOM]);
  XCTAssertNotNil([adc PSK]);
  XCTAssertNotNil([adc PCONT]);
  XCTAssertNotNil([adc MOC]);
  XCTAssertNotNil([adc fetchCon]);
  // (([adc fetchCon]) != nil) failed: throwing "executeFetchRequest:error: A fetch request must have an entity." - - I simply had not made one in the MOM {yet}
  XCTAssertTrue([adc copyDatabaseIfNotPresent]);
}

@end
