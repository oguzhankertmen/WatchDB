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
  func getMovies()
}

final class HomeViewModel {
  weak var view: HomeScreenInterface?
  private let service = MovieService()
  var movies: [Movie] = []
  private var page: Int = 1
}

extension HomeViewModel: HomeViewModelInterface {
  func viewDidLoad() {
    view?.configureVC()
    view?.configureCollectionView()
    getMovies()
  }
  
  func getMovies() {
    service.downloadMovies(page: page) { [weak self] returnedMovies in
      guard let self = self else { return }
      guard let returnedMovies = returnedMovies else {return}
      
      self.movies.append(contentsOf: returnedMovies)
      self.page += 1
      self.view?.reloadCollectionView()
    }
  }
}
