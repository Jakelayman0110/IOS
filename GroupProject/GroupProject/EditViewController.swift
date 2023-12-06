//
//  EditViewController.swift
//  GroupProject
//
//  Created by Luke Holland on 11/9/23.
//

import UIKit

class EditViewController: UIViewController {
    var colorNum = 0;
    var colorValue: [Int] = [];
    var ColorArray:[[Int]] = [];
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorCode: UILabel!
    @IBOutlet weak var ColorLabel: UILabel!
    
    override func viewDidLoad() {
        redSlider.value=Float(colorValue[0])
        greenSlider.value=Float(colorValue[1])
        blueSlider.value=Float(colorValue[2])
        setColor()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //needs to contain sliders to adjust value of RGB
        //Sliders should be able to go from 0 to 255
        //Needs a save button and an exit button
        //if save button pressed, return to viewController and update data
        // else, just exit, no update necessary
    }
    
    @IBAction func redSliderAdjusted(_ sender: Any) {
        setColor()
    }
    
    @IBAction func greenSliderAdjusted(_ sender: Any) {
        setColor()
    }
    
    @IBAction func blueSliderAdjusted(_ sender: Any) {
        setColor()
    }
    
    func setColor(){
        colorValue[0] = Int(redSlider.value)
        colorValue[1] = Int(greenSlider.value)
        colorValue[2] = Int(blueSlider.value)
    
        colorCode.text = ("\(colorValue[0]), \(colorValue[1]), \(colorValue[2])")
        
        
        ColorLabel.backgroundColor = (UIColor(red: CGFloat(Double(colorValue[0])/255.0), green: CGFloat(Double(colorValue[1])/255.0), blue: CGFloat(Double(colorValue[2])/255.0), alpha: 1))
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if (transition == "SavedSegue"){
            let destination = segue.destination as! ViewController
            ColorArray[colorNum-1] = [Int(redSlider.value), Int(greenSlider.value), Int(blueSlider.value)]
            destination.ColorArray=ColorArray
        }
    }

}
