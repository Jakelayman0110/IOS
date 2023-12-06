//
//  ViewController.swift
//  Layman_Movies
//
//  Created by Jacob Layman on 11/27/23.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviegenres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        
        cell.textLabel?.text = moviegenres[indexPath.row].category
        return cell
    }
    
    
    @IBOutlet var genreTableView: UITableView!
    
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

