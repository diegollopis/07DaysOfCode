//
//  MoviesListViewModel.swift
//  07DaysOfCode
//
//  Created by Diego Llopis on 20/11/22.
//

import UIKit


class MoviesListViewModel {
    
    //MARK: - Constants and Variables
    private let network = Network()
    var movies = [Movie]()
    
    //MARK: - Init
    init() {
        getPopularMovies()
    }
    
    //MARK: - Setups
    private func getPopularMovies() {
        network.fetchPopularMovies { movies in
            self.movies = movies
        }
    }
}
