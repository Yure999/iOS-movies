//
//  movieLoader.swift
//  MoviesiOSKata
//
//  Created by Martin Bueno on 28/07/2020.
//  Copyright © 2020 xurxodev. All rights reserved.
//

import Foundation

internal final class MovieInteractor{
    private var movies = [Movie]()
    private var moviePresenter: MoviePresenterProtocol
    private var movieRepository: MovieRepository!
    
    init(moviePresenter: MoviePresenterProtocol, movieRepository: MovieRepository) {
        self.moviePresenter = moviePresenter
        self.movieRepository = movieRepository
    }
    
    func loadMovies(){
        self.moviePresenter.loadingMovies()
        self.fetchData()
    }
    
    private func fetchData(){
        DispatchQueue.global(qos: .background).async {
            
            self.movies = self.movieRepository.get()
            
            DispatchQueue.main.async {
                self.moviePresenter.loadedMovies(movies: self.movies)
            }
        }
    }
}
