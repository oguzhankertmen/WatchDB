//
//  UIHelper.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 9.11.2022.
//

import UIKit

enum UIHelper {
  static func createHomeFlowLayout() -> UICollectionViewFlowLayout {
    let layout = UICollectionViewFlowLayout()
    let itemWidth = CGFloat.deviceWidth
    
    layout.scrollDirection = .vertical
    layout.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.5)
    layout.minimumLineSpacing = 40
    
    return layout
  }
}
