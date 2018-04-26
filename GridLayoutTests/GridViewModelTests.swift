//
//  GridViewModelTests.swift
//  GridLayoutTests
//
//  Created by wingchi on 4/26/18.
//  Copyright © 2018 The Test and the Driven. All rights reserved.
//

import XCTest
@testable import GridLayout

class GridViewModelTests: XCTestCase {
    let testFrame = CGRect(x: 0, y: 0, width: 72, height: 130)
    let expectedFullWidth = 72 - 2 * GridViewModel.itemMargin // 56
    let expectedHalfWidth = (72 / 2) - 2 * GridViewModel.itemMargin //20
    let expectedHeight = (130 / 5) - 2 * GridViewModel.itemMargin //10
    
    func testOneItemCellSize() {
        let expectedCellSize = CGSize(width: expectedFullWidth, height: expectedHeight)
        let viewModel = GridViewModel()
        viewModel.data = [1]
        let row = 0
        let testIndexPath = IndexPath(row: row, section: 0)
        let cellSize = viewModel.cellSize(for: testFrame, at: testIndexPath)
        XCTAssertEqual(cellSize, expectedCellSize)
    }
    
    func testTwoItemCellSize() {
        let expectedCellSizes = [
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight)
        ]
        let viewModel = GridViewModel()
        viewModel.data = [1, 2]
        for row in 0...(viewModel.data.count - 1) {
            let testIndexPath = IndexPath(row: row, section: 0)
            let cellSize = viewModel.cellSize(for: testFrame, at: testIndexPath)
            XCTAssertEqual(cellSize, expectedCellSizes[row])
        }
    }
    
    func testThreeItemCellSize() {
        let expectedCellSizes = [
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight)
            ]
        let viewModel = GridViewModel()
        viewModel.data = [1, 2, 3]
        for row in 0...(viewModel.data.count - 1) {
            let testIndexPath = IndexPath(row: row, section: 0)
            let cellSize = viewModel.cellSize(for: testFrame, at: testIndexPath)
            XCTAssertEqual(cellSize, expectedCellSizes[row])
        }
    }
    
    func testFourItemCellSize() {
        let expectedCellSizes = [
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight)
            ]
        let viewModel = GridViewModel()
        viewModel.data = [1, 2, 3, 4]
        for row in 0...(viewModel.data.count - 1) {
            let testIndexPath = IndexPath(row: row, section: 0)
            let cellSize = viewModel.cellSize(for: testFrame, at: testIndexPath)
            XCTAssertEqual(cellSize, expectedCellSizes[row])
        }
    }
    
    func testFiveItemCellSize() {
        let expectedCellSizes = [
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight)
            ]
        let viewModel = GridViewModel()
        viewModel.data = [1, 2, 3, 4, 5]
        for row in 0...(viewModel.data.count - 1) {
            let testIndexPath = IndexPath(row: row, section: 0)
            let cellSize = viewModel.cellSize(for: testFrame, at: testIndexPath)
            XCTAssertEqual(cellSize, expectedCellSizes[row])
        }
    }
    
    func testSixItemCellSize() {
        let expectedCellSizes = [
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedFullWidth, height: expectedHeight),
            CGSize(width: expectedHalfWidth, height: expectedHeight),
            CGSize(width: expectedHalfWidth, height: expectedHeight),
            CGSize(width: expectedHalfWidth, height: expectedHeight),
            CGSize(width: expectedHalfWidth, height: expectedHeight)
        ]
        let viewModel = GridViewModel()
        viewModel.data = [1, 2, 3, 4, 5, 6]
        for row in 0...(viewModel.data.count - 1) {
            let testIndexPath = IndexPath(row: row, section: 0)
            let cellSize = viewModel.cellSize(for: testFrame, at: testIndexPath)
            XCTAssertEqual(cellSize, expectedCellSizes[row])
        }
    }
}
