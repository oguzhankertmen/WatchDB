//
//  APIURLs.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 4.11.2022.
//

import Foundation

enum APIURLs {
  static func movies(page: Int) -> String {
    "https://api.themoviedb.org/3/movie/popular?api_key=b9095663780407148e000e244ef8a85f&language=en-US&page=\(page)"
  }
  static func imageURL(posterPath: String) -> String {
    "https://image.tmdb.org/t/p/w500\(posterPath)"
  }
  static func movieDetail(id: Int) -> String {
  "https://api.themoviedb.org/3/movie/\(id)?api_key=b9095663780407148e000e244ef8a85f&language=en-US"
  }
}
