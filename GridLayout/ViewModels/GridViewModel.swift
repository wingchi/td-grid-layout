//
//  GridViewModel.swift
//  GridLayout
//
//  Created by wingchi on 4/26/18.
//  Copyright © 2018 The Test and the Driven. All rights reserved.
//

import Foundation
import UIKit

class GridViewModel {
    static var itemMargin: CGFloat = 8.0
    var data: [Int] = (1...10).map { $0 }
    
    func cellSize(for frame: CGRect, at indexPath: IndexPath) -> CGSize {
        let height = (frame.height / 5) - 2 * GridViewModel.itemMargin
        let fullWidth = frame.width - 2 * GridViewModel.itemMargin
        let halfWidth = (frame.width / 2) - 2 * GridViewModel.itemMargin
        
        let shouldBeFullWidth = cellShouldBeFullWidth(at: indexPath)
        
        let width = shouldBeFullWidth ? fullWidth: halfWidth
        return CGSize(width: width, height: height)
    }
    
    private func cellShouldBeFullWidth(at indexPath: IndexPath) -> Bool {
        let count = data.count
        guard indexPath.row < count else { return false }
        switch indexPath.row {
        case 0:
            return count < 10
        case 1:
            return count < 9
        case 2:
            return count < 8 && count != 6
        case 3, 4:
            return count < 6
        default:
            return false
        }
    }
}
