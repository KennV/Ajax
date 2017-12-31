//
//  KDVAjaxDataControllerTests.m
//  AjaxTests
//
//  Created by Kenn Villegas on 12/31/17.
//  Copyright © 2017 Kenn Villegas. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "KDVAjaxDataController.h"

@interface KDVAjaxDataControllerTests : XCTestCase

@end

@implementation KDVAjaxDataControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
//  KDVAjaxDataController * j = [[KDVAjaxDataController alloc]initAllUp];
  XCTAssertNotNil([[KDVAjaxDataController alloc]initAllUp]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
