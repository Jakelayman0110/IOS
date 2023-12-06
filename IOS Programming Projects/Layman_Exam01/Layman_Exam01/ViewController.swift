//
//  ViewController.swift
//  Layman_Exam01
//
//  Created by Jacob Layman on 10/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOL: UITextField!
    
    @IBOutlet weak var roomOL: UITextField!
    
    @IBOutlet weak var memOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcBut(_ sender: Any) {
        var name = nameOL.text!
        var room = roomOL.text!
        var mem = memOL.text!
        
        func calculatePrice(roomType: String, isMember: Bool) -> (Double, String) {
            var basePrice: Double
            
            if roomType.lowercased() == "single-bed" {
                basePrice = 74.99
            } else if roomType.lowercased() == "double-bed" {
                basePrice = 84.99
            } else {
                return (-1, "") // Invalid room type, return placeholder values
            }
            
            let discountRate: Double = isMember ? 0.05 : 0.0 // 5% discount for members
            
            var totalPrice: Double = basePrice * (1.0 - discountRate)
            let taxRate = 0.1675 // 16.75% tax rate
            let totalPriceWithTax = totalPrice * (1.0 + taxRate)
            
            let roomImage = roomType.lowercased() == "single-bed" ? "Single_Img" : "Double_Img"
            
            return (totalPriceWithTax, roomImage)
        }
    






        let (totalPrice, roomImage) = calculatePrice(roomType: room, isMember: mem.lowercased() == "yes")
            
            // Display the reservation details and image
            if totalPrice == -1 {
                outputOL.text = """
                                Sorry, there are no rooms
                                available with your preferences.
                                """
            image.image = UIImage(named: "NoRoom_Img")
            } else {
                outputOL.text = """
                                Dear \(name),
                                You have made a reservation at Bearcat Motel
                                for a \(room) at the price of \(totalPrice) including tax
                                """
            image.image = UIImage(named: "Single_Img")
            }
    }
    
    @IBAction func resetBut(_ sender: Any) {
        nameOL.text! = ""
        roomOL.text! = ""
        memOL.text! = ""
        outputOL.text! = ""
        image.image = nil
    }
}

