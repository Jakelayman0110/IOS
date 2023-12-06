//
//  ResultViewController.swift
//  Layman_Exam02
//
//  Created by Jacob Layman on 11/14/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var loanTypeOutlet: UILabel!
    
    @IBOutlet weak var loanAmountOutlet: UILabel!
    
    @IBOutlet weak var interestRateOutlet: UILabel!
    
    @IBOutlet weak var calculatedEMIOutlet: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    var loanType = ""
    var loanAmount = ""
    var interestRate = ""
    var calcEMI = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loanTypeOutlet.text = loanTypeOutlet.text! + loanType
        loanAmountOutlet.text = loanAmountOutlet.text! + loanAmount
        interestRateOutlet.text = interestRateOutlet.text! + interestRate
        calculatedEMIOutlet.text = calculatedEMIOutlet.text! + calcEMI
        imageOutlet.image = UIImage(named: image)
        
        
        //making the current image opaque.
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.alpha = 0
        })
                
        //Assign the new image with animation and make it transparent. (alpha = 1)
                
        UIView.animate(withDuration: 1, delay:0.5, animations: {
            self.imageOutlet.alpha = 1
            self.imageOutlet.image = UIImage(named: self.image)
        })
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
