//
//  MovieCollectionViewCell.swift
//  Layman_Movies
//
//  Created by Jacob Layman on 11/27/23.
//

import UIKit

class MovieCollectionViewCell: GenreViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.delegate = self
        genreTableView.dataSource = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue"{
            let destination = segue.destination as! MoviesViewController
            
            destination.genre1 = moviegenres[(genreTableView.indexPathForSelectedRow?.row)!]
        }
    }
    
}
