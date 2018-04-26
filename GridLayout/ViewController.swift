//
//  ViewController.swift
//  GridLayout
//
//  Created by wingchi on 4/23/18.
//  Copyright © 2018 The Test and the Driven. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private let gridViewModel = GridViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }

    func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(GridCollectionViewCell.self, forCellWithReuseIdentifier: GridCollectionViewCell.nibName)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GridCollectionViewCell.nibName, for: indexPath)
            as? GridCollectionViewCell
            else { fatalError("Could not find GridCollectionViewCell") }
        let labelString = "\(gridViewModel.data[indexPath.row])"
        cell.configure(with: labelString)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gridViewModel.data.count
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}
