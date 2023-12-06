//
//  ViewController.swift
//  Layman_CalculatorApp
//
//  Created by Jacob Layman on 9/19/23.
//

import UIKit

class ViewController: UIViewController {

    var storedNumber: Double = 0.0
    var selectedOperator: String = ""
    var isPositive: Bool = true
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ACButton(_ sender: UIButton) {
        resultOutlet.text = ""
        storedNumber = 0
        selectedOperator = ""
        
    }
    
    @IBAction func CButton(_ sender: UIButton) {
        resultOutlet.text = ""
    }
    
    @IBAction func flipButton(_ sender: UIButton) {
        if let currentText = resultOutlet.text, !currentText.isEmpty {
            if let currentNumber = Double(currentText) {
                let flippedNumber = -currentNumber
                storedNumber = flippedNumber
                resultOutlet.text = String(format: "%.2f", flippedNumber)
            } else {
                // Handle invalid input (e.g., non-numeric characters)
                resultOutlet.text = "Invalid Input"
            }
        }
    }
    
    @IBAction func divButton(_ sender: UIButton) {
        storedNumber = Double(resultOutlet.text ?? "") ?? 0
        selectedOperator = "/"
        resultOutlet.text! = ""
    }
    
    @IBAction func sevButton(_ sender: UIButton) {
        resultOutlet.text?.append("7")
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        resultOutlet.text?.append("8")
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        resultOutlet.text?.append("9")
    }
    
    @IBAction func mulButton(_ sender: UIButton) {
        storedNumber = Double(resultOutlet.text ?? "") ?? 0
        selectedOperator = "*"
        resultOutlet.text! = ""
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        resultOutlet.text?.append("4")
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        resultOutlet.text?.append("5")
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        resultOutlet.text?.append("6")
    }
    
    @IBAction func minButton(_ sender: UIButton) {
        storedNumber = Double(resultOutlet.text ?? "") ?? 0
        selectedOperator = "-"
        resultOutlet.text! = ""
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        resultOutlet.text?.append("1")
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        resultOutlet.text?.append("2")
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        resultOutlet.text?.append("3")
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        storedNumber = Double(resultOutlet.text ?? "") ?? 0
        selectedOperator = "+"
        resultOutlet.text! = ""
    }
    
    @IBAction func zeroButton(_ sender: UIButton) {
        resultOutlet.text?.append("0")
    }
    
    @IBAction func decButton(_ sender: UIButton) {
        resultOutlet.text?.append(".")
    }
    
    @IBAction func percButton(_ sender: UIButton) {
        storedNumber = Double(resultOutlet.text ?? "") ?? 0
        selectedOperator = "%"
    }
    
    @IBAction func eqButton(_ sender: UIButton) {
        let operatorSymbol = selectedOperator
        let currentNumber = Double(resultOutlet.text ?? "")
                // Calculate the result based on the selected operator and the stored number
            switch operatorSymbol {
            case "+":
                storedNumber += currentNumber ?? 0
            case "-":
                storedNumber -= currentNumber ?? 0
            case "*":
                storedNumber *= currentNumber ?? 0
            case "%":
                storedNumber = (currentNumber ?? 0)/100
            case "/":
                    // Check for division by zero
                if currentNumber != 0 {
                    storedNumber /= currentNumber ?? 0
                } else {
                    resultOutlet.text! = "Cannot Divide By 0"
                }
            default:
                break
            }
                
            if storedNumber.truncatingRemainder(dividingBy: 1) == 0 {
                resultOutlet.text = String(Int(storedNumber))
            } else {
                resultOutlet.text = String(format: "%.5f", storedNumber)
            }

            selectedOperator = ""
    }
}


