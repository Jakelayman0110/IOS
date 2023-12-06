//
//  ViewController.swift
//  Layman_Exam02
//
//  Created by Jacob Layman on 11/14/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var loanTypeInput: UITextField!
    
    @IBOutlet weak var loanAmountInput: UITextField!
    
    @IBOutlet weak var interestRateInput: UITextField!
    
    @IBOutlet weak var termInput: UITextField!
    
    @IBOutlet weak var calcButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var totalMonths = 0.00
    var monthlyInterestRate = 0.00
    var monthlyEMIPayment = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcButtonClick(_ sender: Any) {
        totalMonths = (Double(termInput.text!) ?? 0) * 12
        
        monthlyInterestRate = ((Double(interestRateInput.text!) ?? 0) / 12) / 100
        
        monthlyEMIPayment = (Double(loanAmountInput.text!) ?? 0) * (monthlyInterestRate * pow(1 + monthlyInterestRate,totalMonths)) / (pow(1 + monthlyInterestRate,totalMonths) - 1)
        
    }
    
    @IBAction func resetButtonClick(_ sender: Any) {
        loanTypeInput.text = ""
        loanAmountInput.text = ""
        interestRateInput.text = ""
        termInput.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        var transition = segue.identifier
        if transition == "resultSegue" {
            var destination = segue .destination as! ResultViewController
            
            destination.loanType = loanTypeInput.text!
            destination.loanAmount = loanAmountInput.text!
            destination.interestRate = interestRateInput.text!
            destination.calcEMI = String (monthlyEMIPayment)
            destination.image = loanTypeInput.text!
            
            loanTypeInput.text = ""
            loanAmountInput.text = ""
            interestRateInput.text = ""
            termInput.text = ""
            
        }
    }
}

