//
//  ResultViewController.swift
//  Layman_Dictionary
//
//  Created by Jacob Layman on 11/28/23.
//

import UIKit

class ResultViewController: UIViewController {

    var word = ""
    var meaning = ""
    
    
    @IBOutlet weak var wordDefLabel: UILabel!
    
    @IBOutlet weak var chosenWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        chosenWordLabel.text? = word
        wordDefLabel.text? = meaning
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
