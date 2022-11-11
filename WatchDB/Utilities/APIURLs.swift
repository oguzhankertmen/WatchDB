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
}