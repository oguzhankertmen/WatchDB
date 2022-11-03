//
//  HomeViewModel.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 4.11.2022.
//

import Foundation

protocol HomeViewModelInterface {
  var view: HomeScreenInterface? { get set }
  
  func viewDidLoad()
}

final class HomeViewModel {
   var view: HomeScreenInterface?
}

extension HomeViewModel: HomeViewModelInterface {
  func viewDidLoad() {
    view?.configureVC()
  }
}
