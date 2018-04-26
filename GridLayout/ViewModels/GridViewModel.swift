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
        
        return CGSize(width: fullWidth, height: height)
    }
}
