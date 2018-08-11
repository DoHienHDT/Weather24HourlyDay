//
//  ExtensionCollectionView.swift
//  Weather24HourlyDay
//
//  Created by dohien on 11/08/2018.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
extension UICollectionView {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let screenWidth = UIScreen.main.bounds.width
//
//        let cellSquareSize = (screenWidth - 2 * padding - ((numberOfItem - 1) * padding)) / numberOfItem
//
//        return CGSize.init(width: cellSquareSize, height: cellSquareSize)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
//    }
    func setup_horizotal(numberOfItems: CGFloat, padding: CGFloat) {
        let layout = UICollectionViewFlowLayout()
        let widthScreen = UIScreen.main.bounds.size.width
        let width = (widthScreen - padding * 2 - padding * (numberOfItems - 1))/numberOfItems
        layout.itemSize = CGSize(width: width, height: width)
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.minimumLineSpacing = padding
        layout.scrollDirection = .vertical
        self.collectionViewLayout = layout
    }
    
//    func setup_vertical(numberOfItems: CGFloat, padding: CGFloat) {
//        let layout = UICollectionViewFlowLayout()
//        let widthScreen = UIScreen.main.bounds.size.width
//        let width = (widthScreen - padding * 2 - padding * (numberOfItems - 1))/numberOfItems
//        layout.itemSize = CGSize(width: width, height: width * 2)
//        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
//        layout.minimumLineSpacing = padding
//        layout.scrollDirection = .horizontal
//        self.collectionViewLayout = layout
//    }
}

