//
//  MoviesPresenter.swift
//  MoviesiOSKata
//
//  Created by Jorge Sánchez on 9/1/17.
//  Copyright © 2017 xurxodev. All rights reserved.
//

import Foundation

internal final class MoviePresenter: MoviePresenterProtocol{
    
    private var movieRepository:MovieRepository!
    private var view: MoviesView!
    private var movieInteractor: MovieInteractor!
    private var router: Router!
    
    init(movieRepository:MovieRepository) {
        self.movieRepository = movieRepository
    }
    func attachRouter(router: Router){
        self.router = router
    }
    func attachView(view: MoviesView){
        self.view = view
        movieInteractor.loadMovies()
    }
    
    func attachInteractor(interactor: MovieInteractor){
        self.movieInteractor = interactor
    }
    
    func onRefreshAction(){
        movieInteractor.loadMovies()
    }
    
    internal func loadingMovies(){
        view.clearMovies()
        view.showLoadingText()
    }
    
    internal func loadedMovies(movies: [Movie]){
        view.showMovies(movies: movies)
        view.showTotalMovies(count: movies.count)
    }
}
