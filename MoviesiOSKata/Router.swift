//
//  PoorsManCompositionRoot.swift
//  MoviesiOSKata
//
//  Created by Jorge Sánchez on 5/11/16.
//  Copyright © 2016 xurxodev. All rights reserved.
//

import UIKit


class Router{
    
    private var movieRepository:MovieRepository!
    private var moviePresenter: MoviePresenter!
    private var movieInteractor: MovieInteractor!
    
    init() {
        configureDependencies()
    }
    
    func installRootViewControllerIntoWindow(_ window: UIWindow) {
        
        let viewController = moviesTableViewController(window)
        
        viewController.setMoviesPresenter(moviePresenter)
        viewController.setRouter(self)
    }
    
    private func configureDependencies() {
        movieRepository = DiskMovieRepository()
        moviePresenter = MoviePresenter(movieRepository: movieRepository)
        movieInteractor = MovieInteractor(moviePresenter: self.moviePresenter, movieRepository: self.movieRepository)
        moviePresenter.attachRouter(router: self)
        moviePresenter.attachInteractor(interactor: self.movieInteractor)
    }
    
    func moviesTableViewController(_ window: UIWindow) -> MoviesViewController {
        let navigationController = navigationControllerFromWindow(window)
        
        let moviesTableViewController = navigationController.visibleViewController as! MoviesViewController
        
        return moviesTableViewController
    }
    
    func navigationControllerFromWindow(_ window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
}
