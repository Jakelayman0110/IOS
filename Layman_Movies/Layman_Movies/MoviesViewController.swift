//
//  MoviesViewController.swift
//  Layman_Movies
//
//  Created by Jacob Layman on 11/27/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return comedy.movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath)
        
        cell.assignMovieDetails(with: genre1.movies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
    }
    func assignMovieDetails(index: IndexPath){
        movieNameLabel.text = "Movie title: \(genre1.movies[index.row].title)"
        movieCastLabel.text = "Movie Cast: \(genre1.movies[index.row].cast)"
        moviePlotLabel.text = "Movie Plot \(genre1.movies[index.row].moviePlot)"
        movieYearLabel.text = "Year Released: \(genre1.movies[index.row].releasedYear)"
        movieRatingLabel.text = "Movie Rating: \(genre1.movies[index.row].movieRating)"
        movieBoxOfficeLabel.text = "Box Office: \(genre1.movies[index.row].boxOffice)"
    }
    

    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
    }
    
    var genre1 : genre = genre(category: "", movies: [])

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
