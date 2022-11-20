//
//  Movie.swift
//  07DaysOfCode
//
//  Created by Diego Llopis on 20/11/22.
//

import Foundation

struct Movie: Codable {
    let id: Int
    let title: String
    let releaseDate: String
    let posterPath: String?
    let overview: String
    let voteAverage: Float
    
    // MARK: - CodingKeys
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case releaseDate = "release_date"
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
    }
}

let movies: [Movie] = [
    Movie(id: 1, title: "Órfã 2: A Origem", releaseDate: "2022-07-27", posterPath: nil, overview: "", voteAverage: 7.2),
    Movie(id: 2, title: "Minions 2: A Origem de Gru", releaseDate: "2022-06-29", posterPath: nil, overview: "", voteAverage: 7.8),
    Movie(id: 3, title: "Thor: Amor e Trovão", releaseDate: "2022-07-06", posterPath: nil, overview: "", voteAverage: 6.8),
    Movie(id: 4, title: "Avatar", releaseDate: "2009-12-18", posterPath: nil, overview: "", voteAverage: 8.8),
]
