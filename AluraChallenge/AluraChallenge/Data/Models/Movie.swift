//
//  Movie.swift
//  07DaysOfCode
//
//  Created by Diego Llopis on 20/11/22.
//

import Foundation

struct MovieResults: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    let title: String
    let releaseDate: String
    let posterPath: String
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
