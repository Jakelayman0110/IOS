//
//  ViewController.swift
//  enter number
//
//  Created by Layman,Jacob R on 8/31/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var input1OL: UITextField!
    
    
    @IBOutlet weak var input2OL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnClicked(_ sender: Any) {
        //read inputs and assign variables
        var input1 = input1OL.text!
        var input2 = input2OL.text!
        let int1 = Int(input1) ?? 0
        let int2 = Int(input2) ?? 0
        
        //test to see which number is greater
        if int1 > int2{
            outputOL.text = ("\(int1) is the greater number")
        }
        else if int1 < int2{
            outputOL.text = ("\(int2) is the greater number")
        }
        else{
            outputOL.text = ("The numbers are equal")
        }
    }
    
    
    
}

