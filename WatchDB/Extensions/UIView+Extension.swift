//
//  UIView+Extension.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 5.11.2022.
//

import UIKit

extension UIView {
  func pinToEdgesOf(view: UIView){
    NSLayoutConstraint.activate([
      topAnchor.constraint(equalTo: view.topAnchor),
      leadingAnchor.constraint(equalTo: view.leadingAnchor),
      trailingAnchor.constraint(equalTo: view.trailingAnchor),
      bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
  }
}
