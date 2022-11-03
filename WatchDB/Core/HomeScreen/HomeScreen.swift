//
//  HomeScreen.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 1.11.2022.
//

import UIKit

protocol HomeScreenInterface {
  func configureVC()
}

final class HomeScreen: UIViewController {

  private var viewModel = HomeViewModel()
  
    override func viewDidLoad() {
        super.viewDidLoad()

      viewModel.view = self
      viewModel.viewDidLoad()
    }

}

extension HomeScreen: HomeScreenInterface {
  func configureVC() {
    view.backgroundColor = .systemPink
  }
  
  
}
