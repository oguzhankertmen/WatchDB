//
//  NetworkManager.swift
//  WatchDB
//
//  Created by Oğuzhan KERTMEN on 1.11.2022.
//

import Foundation

class NetworkManager {
  static let shared = NetworkManager()
  private init() {}
  
  func download(url: URL, completion: @escaping (Result<Data, Error>) -> ()) {
    URLSession.shared.dataTask(with: url) { data, response, error in
      if let error = error {
        print(error)
        completion(.failure(error))
        return
      }
      guard let response = response as? HTTPURLResponse,
            response.statusCode == 200 else {
        completion(.failure(URLError(.badServerResponse)))
        return
      }
      guard let data = data else {
        completion(.failure(URLError(.badURL)))
        return
      }
      completion(.success(data))
    }
  }
}
