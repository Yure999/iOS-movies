//
//  MovieDetailViewController.swift
//  MoviesiOSKata
//
//  Created by Martin Bueno on 30/07/2020.
//  Copyright © 2020 xurxodev. All rights reserved.
//

import UIKit
import SDWebImage

class MovieDetailViewController: UIViewController{

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieDescription: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI(){
        movieTitle.text = movie?.title
        movieDescription.text = movie?.description
        movieImage.sd_setImage(with: URL(string: (movie?.image)!))
    }
}
