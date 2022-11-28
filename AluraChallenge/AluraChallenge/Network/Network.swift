//
//  MoviesRepository.swift
//  AluraChallenge
//
//  Created by Diego Llopis on 26/11/22.
//

import UIKit

class Network {
    
    let url = URL(string: "\(BaseUrl.baseUrl)?api_key=\(APIKey.apiKey)&language=pt-BR")!
    
    func fetchPopularMovies(_ completion: @escaping ([Movie]) -> ()) {
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                return
            }
            do {
                let result = try JSONDecoder().decode(MovieResults.self, from: data)
                completion(result.results)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
