//
//  ViewController.swift
//  Layman_Exam3
//
//  Created by Jacob Layman on 11/30/23.
//

import UIKit

class LaymanHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return information.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = laymanTVOL.dequeueReusableCell(withIdentifier: "laymanCell", for: indexPath)
        
        cell.textLabel?.text = information[indexPath.row][0] + " " + information[indexPath.row][1]
        
        return cell
    }
    
    
    @IBOutlet weak var laymanTVOL: UITableView!
    
    var information = [
        ["Jacob", "Layman", "913-235-5775"],
        ["Fred", "Williams", "123-456-7890"],
        ["Scooby", "Doo", "789-654-3762"],
        ["Bat", "Man", "100-000-0000"],
        ["Spongebob", "Squarepants", "089-765-2435"],
        ["Avery", "Johnson", "145-678-9875"],
        ["Edward", "Sno", "576-876-4539"],
        ["Frank", "Sinatra", "478-963-2453"],
        ["Joe", "Rogan", "123-765-9876"],
        ["Travis", "Kelce", "156-987-3520"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        laymanTVOL.delegate = self
        laymanTVOL.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "laymanSegue"{
            let destination = segue.destination as! LaymanContactViewController
            
            destination.initials = String(information[(laymanTVOL.indexPathForSelectedRow?.row)!][0].prefix(1)) + ". " + String(information[(laymanTVOL.indexPathForSelectedRow?.row)!][1].prefix(1)) + "."
            
            destination.phone = information[(laymanTVOL.indexPathForSelectedRow?.row)!][2]
        }
    }
}

