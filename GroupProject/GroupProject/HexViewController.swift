//
//  HexViewController.swift
//  GroupProject
//
//  Created by Luke Holland on 11/9/23.
//

import UIKit

class HexViewController: UIViewController {
    
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
            Color1.setTitle(rgbToHex(r: ColorArray[0][0], g: ColorArray[0][1], b: ColorArray[0][2]), for: .normal)
            Color2.setTitle(rgbToHex(r: ColorArray[1][0], g: ColorArray[1][1], b: ColorArray[1][2]), for: .normal)
            Color3.setTitle(rgbToHex(r: ColorArray[2][0], g: ColorArray[2][1], b: ColorArray[2][2]), for: .normal)
            Color4.setTitle(rgbToHex(r: ColorArray[3][0], g: ColorArray[3][1], b: ColorArray[3][2]), for: .normal)
        }
        // You might want to handle scenarios where ColorArray has insufficient data
    }
        // Do any additional setup after loading the view.
        //same as RGB Controller, but the labels need to contain hex values, which are converted from the rgb values
        //all imported rgb values need to be parsed through the rgbToHex function
        //Example: button1.text = rgbToHex(array[0][1],array[0][1], array[0][2])
        

    func rgbToHex(r:Int, g:Int, b:Int) -> String{
        //numbers go through divison and modulo to turn from base 10 to base 16
        let r1=String(r/16)
        let r2=String(r%16)
        let g1=String(g/16)
        let g2=String(g%16)
        let b1=String(b/16)
        let b2=String(b%16)
        var rgbArray = [r1,r2,g1,g2,b1,b2]
        for (index, digit) in rgbArray.enumerated(){
            //converts all values of 10 or higher to their Hexidecimal symbol
            if(digit=="10"){
                rgbArray[index] = "A"
            }
            if(digit=="11"){
                rgbArray[index] = "B"
            }
            if(digit=="12"){
                rgbArray[index] = "C"
            }
            if(digit=="13"){
                rgbArray[index] = "D"
            }
            if(digit=="14"){
                rgbArray[index] = "E"
            }
            if(digit=="15"){
                rgbArray[index] = "F"
            }
        }
        //returns the assembled rgbArray as a string in hexidecimal form.
        return ("#\(rgbArray[0])\(rgbArray[1])\(rgbArray[2])\(rgbArray[3])\(rgbArray[4])\(rgbArray[5])")
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
