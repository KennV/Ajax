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
  KDVAjaxDataController * tOne = [[KDVAjaxDataController alloc]initAllUp];
  XCTAssertNotNil(tOne);
  XCTAssert([[tOne applicationName] isEqualToString:(@"Ajax")]);
  XCTAssert([[tOne databaseName]isEqualToString:(@"Ajax.sqlite")]);
  XCTAssertTrue([[tOne entityClassName]isEqualToString:@"KDVAjaxEntity"]);
  XCTAssertNotNil([tOne MOM]);

}

@end
