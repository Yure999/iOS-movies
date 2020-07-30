//
//  MovieDetailViewController.swift
//  MoviesiOSKata
//
//  Created by Martin Bueno on 30/07/2020.
//  Copyright © 2020 xurxodev. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieTitle: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("detail viewcontroller")
        setUI()
    }
    
    func setUI(){
        movieTitle.text = movie?.title
    }
    
}
