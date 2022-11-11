//
//  Movie.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 4.11.2022.
//

import Foundation

struct MovieResult: Decodable {
  let results: [Movie]?
}

struct Movie: Decodable {
  let id: Int?
  let posterPath: String?
  
  enum CodingKeys: String, CodingKey {
    case id
    case posterPath = "poster_path"
  }
  
  var _id: Int {
    id ?? Int.min
  }
  var _posterPath: String {
    posterPath ?? ""
  }
}
