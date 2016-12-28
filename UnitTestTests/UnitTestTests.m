//
//  UnitTestTests.m
//  UnitTestTests
//
//  Created by 王佳敏 on 16/12/22.
//  Copyright © 2016年 Jm. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
@interface UnitTestTests : XCTestCase
@property (nonatomic,strong)ViewController *viewC;
@end

@implementation UnitTestTests

- (void)setUp {
    [super setUp];
    self.viewC = [[ViewController alloc]init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    self.viewC = nil;
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    int result = [self.viewC getMaxNumber:100];
    NSLog(@"开始测试");
    XCTAssertEqual(result, 100,@"测试不用过");
    
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        
        for (int i = 0; i<3; i++) {
            for (int j = 0; j< 5; j++) {
                NSLog(@"jj");
            }
            NSLog(@"ii");
        }
        // Put the code you want to measure the time of here.
    }];
}

@end
