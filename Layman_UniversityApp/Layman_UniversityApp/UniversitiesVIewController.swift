//
//  ViewController.swift
//  Layman_UniversityApp
//
//  Created by Jacob Layman on 11/16/23.
//

import UIKit

class UniversitiesVIewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var cell = universitiesTableVIew.dequeueReusableCell(withIdentifier:  "reusableCell", for: indexPath)
        
        //populate a cell
        cell.textLabel?.text = arr[indexPath.row].collegeName
        
        //return a cell
        return cell
    }
    
    @IBOutlet weak var universitiesTableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "listsSegue"{
            let destination = segue .destination as! UniversitiesListViewController
            
            
        }
    }
}

