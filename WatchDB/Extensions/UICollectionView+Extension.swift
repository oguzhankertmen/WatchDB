//
//  UICollectionView+Extension.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 21.11.2022.
//

import UIKit

extension UICollectionView {
  func reloadOnMainThread() {
    DispatchQueue.main.async {
      self.reloadData()
    }
  }
}
