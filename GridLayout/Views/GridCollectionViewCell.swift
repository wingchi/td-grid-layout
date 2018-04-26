//
//  GridCollectionViewCell.swift
//  GridLayout
//
//  Created by wingchi on 4/26/18.
//  Copyright © 2018 The Test and the Driven. All rights reserved.
//

import UIKit

class GridCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var view: UIView!
    @IBOutlet weak var itemLabel: UILabel!
    
    static var nibName: String {
        return String(describing: GridCollectionViewCell.self)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed(GridCollectionViewCell.nibName, owner: self, options: nil)
        addSubview(view)
        view.frame = bounds
    }
    
    func configure(with labelString: String) {
        itemLabel.text = labelString
    }
}
