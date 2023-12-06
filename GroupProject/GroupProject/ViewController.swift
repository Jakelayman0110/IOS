//
//  ViewController.swift
//  GroupProject
//
//  Created by Luke Holland on 11/7/23.
//

import UIKit

class ViewController: UIViewController {
    var ColorArray = [[180,128,128],[128,180,128],[128,128,180],[128,128,128]]
    var selected = 0;
    @IBOutlet weak var Color1: UIButton!
    @IBOutlet weak var Color2: UIButton!
    @IBOutlet weak var Color3: UIButton!
    @IBOutlet weak var Color4: UIButton!
    @IBOutlet weak var ColorLabel: UILabel!
    @IBOutlet weak var EditButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.Color1.frame.size.width=self.view.frame.width;
        self.Color2.frame.size.width=self.view.frame.width;
        self.Color3.frame.size.width=self.view.frame.width;
        self.Color4.frame.size.width=self.view.frame.width;
        self.Color1.center.x = self.view.center.x;
        self.Color2.center.x = self.view.center.x;
        self.Color3.center.x = self.view.center.x;
        self.Color4.center.x = self.view.center.x;
        setColor()
        // Do any additional setup after loading the view.
    }
    @IBAction func Color1ButtonPressed(_ sender: Any) {
        ColorLabel.text = ("\(ColorArray[0][0]), \(ColorArray[0][1]), \(ColorArray[0][2])")
        EditButton.isHidden=false;
        selected=1;
    }
    @IBAction func Color2ButtonPressed(_ sender: Any) {
        ColorLabel.text = ("\(ColorArray[1][0]), \(ColorArray[1][1]), \(ColorArray[1][2])")
        EditButton.isHidden=false;
        selected=2;
    }
    @IBAction func Color3ButtonPressed(_ sender: Any) {
        ColorLabel.text = ("\(ColorArray[2][0]), \(ColorArray[2][1]), \(ColorArray[2][2])")
        EditButton.isHidden=false;
        selected=3;
    }
    @IBAction func Color4ButtonPressed(_ sender: Any) {
        ColorLabel.text = ("\(ColorArray[3][0]), \(ColorArray[3][1]), \(ColorArray[3][2])")
        EditButton.isHidden=false;
        selected=4;
    }
    @IBAction func EditButtonPressed(_ sender: Any) {
    }
    
    func setColor(){
        var color1 = UIColor(red: CGFloat(Double(ColorArray[0][0])/255.0), green: CGFloat(Double(ColorArray[0][1])/255.0), blue: CGFloat(Double(ColorArray[0][2])/255.0), alpha: CGFloat(1.0))
        var color2 = UIColor(red: CGFloat(Double(ColorArray[1][0])/255.0), green: CGFloat(Double(ColorArray[1][1])/255.0), blue: CGFloat(Double(ColorArray[1][2])/255.0), alpha: CGFloat(1.0))
        var color3 = UIColor(red: CGFloat(Double(ColorArray[2][0])/255.0), green: CGFloat(Double(ColorArray[2][1])/255.0), blue: CGFloat(Double(ColorArray[2][2])/255.0), alpha: CGFloat(1.0))
        var color4 = UIColor(red: CGFloat(Double(ColorArray[3][0])/255.0), green: CGFloat(Double(ColorArray[3][1])/255.0), blue: CGFloat(Double(ColorArray[3][2])/255.0), alpha: CGFloat(1.0))
        Color1.tintColor = color1;
        Color1.backgroundColor = color1;
        Color2.tintColor = color2;
        Color2.backgroundColor = color2;
        Color3.tintColor = color3;
        Color3.backgroundColor = color3;
        Color4.tintColor = color4;
        Color4.backgroundColor = color4;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if (transition == "EditSegue"){
            let destination = segue.destination as! EditViewController
            destination.colorNum = selected;
            destination.colorValue = ColorArray[selected-1]
            destination.ColorArray = ColorArray
        }
        if (transition == "RGBSegue"){
            let destination = segue.destination as! rgbViewController
            destination.ColorArray = ColorArray
        }
        if (transition == "HexSegue"){
            let destination = segue.destination as! HexViewController
            destination.ColorArray = ColorArray
            
        }
    }
}

