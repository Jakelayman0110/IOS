//
//  ViewController.swift
//  HelloApp
//
//  Created by Jacob Layman on 8/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitBtnClicked(_ sender: Any) {
        //read the input from the text field and assign it to a variable
        var input = inputOL.text!
        
        //print the greetings with string interpolation using the input variable
        outputOL.text = "Hello, \(input)!"
        
    }
    
    
}//end of class

