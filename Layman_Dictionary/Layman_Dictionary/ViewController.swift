//
//  ViewController.swift
//  Layman_Dictionary
//
//  Created by Jacob Layman on 11/28/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = wordsTableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        
        cell.textLabel?.text = words[indexPath.row][0]
        
        return cell
    }
    
    @IBOutlet weak var wordsTableView: UITableView!
    
    var words = [
        ["Benevolent", "well meaning and kindly"],
        ["Courage", "The ability to do something that frightnes one"],
        ["Genuine", "Truly what something is said to be; authentic"],
        ["Hope", "A feeling of expectation and desire for a particular thing to happen"],
        ["Joy", "A feeling of great pleasure and happiness"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wordsTableView.delegate = self
        wordsTableView.dataSource = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "resultSegue"{
            let destination = segue.destination as! ResultViewController
            
            destination.word = String(words[(wordsTableView.indexPathForSelectedRow?.row)!][0].prefix(1))
            destination.meaning = words[(wordsTableView.indexPathForSelectedRow?.row)!][1]
        }
    }


}

