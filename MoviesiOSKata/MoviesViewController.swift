//
//  MoviesViewController.swift
//  MoviesiOSKata
//
//  Created by Jorge Sánchez on 3/1/17.
//  Copyright © 2017 xurxodev. All rights reserved.
//

import UIKit

import SDWebImage

class MoviesViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, MoviesView{
    
    var moviesPresenter:MoviePresenter!
    var movies = [Movie]()
    
    @IBOutlet weak var moviesTableView: UITableView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func refreshClicked(_ sender: UIButton) {
        moviesPresenter.onRefreshAction()
    }
    
    func setMoviesPresenter(_ moviesPresenter:MoviePresenter){
        self.moviesPresenter = moviesPresenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesTableView.tableFooterView = UIView()
        moviesTableView.dataSource = self;
        
        moviesPresenter.attachView(view: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moviesTableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)as! MovieTableViewCell
        
        let movie:Movie = movies[indexPath.item]
        cell.movieTitleLabel.text = movie.title;
        cell.movieImageView.sd_setImage(with: URL(string: movie.image!))
        
        
        return cell
    }
    
    func showMovies(movies: [Movie]) -> Void{
        self.movies = movies
        moviesTableView.reloadData()
    }
    
    func clearMovies() ->  Void{
        movies.removeAll()
        moviesTableView.reloadData()
    }
    
    func showLoadingText() ->  Void{
        titleLabel.text = "loading ..."
    }
    
    func showTotalMovies(count: Int) ->  Void{
        titleLabel.text = "Movies: " + String(count)
    }
}
