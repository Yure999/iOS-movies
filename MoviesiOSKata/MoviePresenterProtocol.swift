//
//  MoviePresenterProtocol.swift
//  MoviesiOSKata
//
//  Created by Martin Bueno on 28/07/2020.
//  Copyright © 2020 xurxodev. All rights reserved.
//

import Foundation

protocol MoviePresenterProtocol: AnyObject {
    func loadingMovies()
    func loadedMovies(movies: [Movie])
}
