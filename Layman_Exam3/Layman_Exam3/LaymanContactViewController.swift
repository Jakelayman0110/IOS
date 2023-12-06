//
//  LaymanContactViewController.swift
//  Layman_Exam3
//
//  Created by Jacob Layman on 11/30/23.
//

import UIKit

class LaymanContactViewController: UIViewController {

    @IBOutlet weak var initialsOL: UILabel!
    
    @IBOutlet weak var phoneNumberOL: UILabel!
    
    var phone = ""
    
    var initials = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialsOL.text? = initials
        phoneNumberOL.text? = phone
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
