//
//  ViewController.swift
//  ScaledVisibleCellsCollectionView
//
//  Created by ikemai on 08/22/2015.
//  Copyright (c) 2015 ikemai. All rights reserved.
//

import UIKit
import ScaledVisibleCellsCollectionView

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    private let cellIdentifier = "CollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Example: set 'VerticalCenter'
//        collectionView.setScaledDesginParam(scaledPattern: .verticalCenter, maxScale: 1.2, minScale: 0.5, maxAlpha: 1.0, minAlpha: 0.5)
        // Example: set 'VerticalTop'
//        collectionView.setScaledDesginParam(scaledPattern: .verticalTop, maxScale: 1.2, minScale: 0.5, maxAlpha: 1.0, minAlpha: 0.5)
        // Example: set 'VerticalBottom'
//        collectionView.setScaledDesginParam(scaledPattern: .verticalBottom, maxScale: 1.2, minScale: 0.5, maxAlpha: 1.0, minAlpha: 0.5)
        // Example: set 'HorizontalCenter'
//        collectionView.setScaledDesginParam(scaledPattern: .horizontalCenter, maxScale: 1.2, minScale: 0.5, maxAlpha: 1.0, minAlpha: 0.5)
        // Example: set 'HorizontalLeft'
        collectionView.setScaledDesginParam(scaledPattern: .horizontalLeft, maxScale: 1.2, minScale: 0.5, maxAlpha: 1.0, minAlpha: 0.5)
        // Example: set 'HorizontalRight'
//        collectionView.setScaledDesginParam(scaledPattern: .horizontalRight, maxScale: 1.2, minScale: 0.5, maxAlpha: 1.0, minAlpha: 0.5)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

//
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
    }
}


//
// MARK: - UIScrollViewDelegate
//
extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.scaledVisibleCells()
    }
}
