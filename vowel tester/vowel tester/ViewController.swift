//
//  ViewController.swift
//  vowel tester
//
//  Created by Layman,Jacob R on 8/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnClicked(_ sender: Any) {
        //read input from text field
        var input = inputOL.text!
        
        //check if the input contains values
        if input.contains("a") || input.contains("e") || input.contains("i") || input.contains("o") || input.contains("u"){
            outputOL.text = ("The input, \(input), contains vowels")
        }
        else{
            outputOL.text = ("The input, \(input), does not contain vowels")
        }
        
        //if text has a,e,i,o,u print "text contains vowels"
        
        //else "the text has no values"
    }
    
    
    
}

