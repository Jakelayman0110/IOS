//
//  ViewController.swift
//  Layman_Assignment02
//
//  Created by Jacob Layman on 9/14/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameConst: UILabel!
    
    @IBOutlet weak var baConst: UILabel!
    
    @IBOutlet weak var tipConst: UILabel!
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        var name = nameOutlet.text!
        var billAmount = billAmountOutlet.text!
        var billAmountDou = Double(billAmount) ?? 0
        var tipPerc = tipPercentageOutlet.text!
        var tipPercDou = Double(tipPerc) ?? 0
        
        var tipPercFin = tipPercDou / 100.0

        var tipAmount = billAmountDou * tipPercFin

        var tipAmountString = String(format: "%.2f", tipAmount)
        
        var totalBill = tipAmount + billAmountDou
        
        var totalBillString = String(format: "%.2f", totalBill)
        nameLabel.text = ("Name: \(name)")
        billAmountLabel.text = ("Bill Amount: \(billAmount)")
        tipAmountLabel.text = ("Tip Amount: \(tipAmountString)")
        totalAmountLabel.text = ("Total Amount: \(totalBillString)")
    
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        nameOutlet.text! = ""
        billAmountOutlet.text! = ""
        tipPercentageOutlet.text! = ""
        nameLabel.text! = ""
        billAmountLabel.text = ""
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
        
    }
}

