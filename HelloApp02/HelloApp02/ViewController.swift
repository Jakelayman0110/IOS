//
//  ViewController.swift
//  HelloApp02
//
//  Created by Jacob Layman on 8/29/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fNameInput: UITextField!
    
    
    @IBOutlet weak var lNameInput: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        //read the input from the text field and assign it a variable
        var input1 = fNameInput.text!
        var input2 = lNameInput.text!
        
        //print the greeting using string interpolation
        outputOL.text = "Hello, \(input1) \(input2)!"
    }
    
}

