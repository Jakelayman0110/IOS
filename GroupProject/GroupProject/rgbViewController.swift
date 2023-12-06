//
//  rgbViewController.swift
//  GroupProject
//
//  Created by Luke Holland on 11/9/23.
//

import UIKit

class rgbViewController: UIViewController {

    @IBOutlet weak var Color1: UIButton!
    @IBOutlet weak var Color2: UIButton!
    @IBOutlet weak var Color3: UIButton!
    @IBOutlet weak var Color4: UIButton!
    
    @IBOutlet weak var colorLabel: UILabel!
    var ColorArray: [[Int]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Assuming ColorArray is received and not nil
        if ColorArray.count >= 4 {
            // Assuming each label represents the RGB value of each color
            Color1.setTitle("\(ColorArray[0][0]), \(ColorArray[0][1]), \(ColorArray[0][2])", for: .normal)
            Color2.setTitle("\(ColorArray[1][0]), \(ColorArray[1][1]), \(ColorArray[1][2])", for: .normal)
            Color3.setTitle("\(ColorArray[2][0]), \(ColorArray[2][1]), \(ColorArray[2][2])", for: .normal)
            Color4.setTitle("\(ColorArray[3][0]), \(ColorArray[3][1]), \(ColorArray[3][2])", for: .normal)
        }
        // You might want to handle scenarios where ColorArray has insufficient data
    }
    
    @IBAction func color1Pressed(_ sender: Any) {
        var color = UIColor(red: CGFloat(Double(ColorArray[0][0])/255.0), green: CGFloat(Double(ColorArray[0][1])/255.0), blue: CGFloat(Double(ColorArray[0][2])/255.0), alpha: CGFloat(1.0))
        colorLabel.tintColor = color;
        colorLabel.backgroundColor = color;
    }
    
    @IBAction func color2Pressed(_ sender: Any) {
        var color = UIColor(red: CGFloat(Double(ColorArray[1][0])/255.0), green: CGFloat(Double(ColorArray[1][1])/255.0), blue: CGFloat(Double(ColorArray[1][2])/255.0), alpha: CGFloat(1.0))
        colorLabel.tintColor = color;
        colorLabel.backgroundColor = color;
    }
    
    @IBAction func color3Pressed(_ sender: Any) {
        var color = UIColor(red: CGFloat(Double(ColorArray[2][0])/255.0), green: CGFloat(Double(ColorArray[2][1])/255.0), blue: CGFloat(Double(ColorArray[2][2])/255.0), alpha: CGFloat(1.0))
        colorLabel.tintColor = color;
        colorLabel.backgroundColor = color;
    }
    
    @IBAction func color4Pressed(_ sender: Any) {
        var color = UIColor(red: CGFloat(Double(ColorArray[3][0])/255.0), green: CGFloat(Double(ColorArray[3][1])/255.0), blue: CGFloat(Double(ColorArray[3][2])/255.0), alpha: CGFloat(1.0))
        colorLabel.tintColor = color;
        colorLabel.backgroundColor = color;
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
