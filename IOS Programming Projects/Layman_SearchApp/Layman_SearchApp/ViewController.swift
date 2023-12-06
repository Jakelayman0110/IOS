//
//  ViewController.swift
//  Layman_SearchApp
//
//  Created by Jacob Layman on 10/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultImage.image = UIImage(named: "welcome")
        srchButton.isEnabled = false
        prevBtn.isHidden = true
        resetButton.isHidden = true
        nextButton.isHidden = true
    }
    var topic = 0
    var imageNumber = 0
    
    var arr = [["solar1", "solar2", "solar3", "solar4", "solar5"],
               ["school1", "school2", "school3", "school4", "school5"],
               ["car1", "car2", "car3", "car4", "car5"]]
    
    var guitar_keywords = ["guitar", "strings", "music", "rock n roll", "guitar solo", "classic rock", "sheet music"]
    var school_keywords = ["school", "college", "elementary", "teacher", "student", "class", "learning", "professor", "topics"]
    var car_keywords = ["car", "truck", "suv", "engine", "motor", "race", "car body", "steering", "wheel"]
    
    var topics_array = [
        "The guitar is a fretted musical instrument that typically has six strings. It is usually held flat against the player's body and played by strumming or plucking the strings with the dominant hand, while simultaneously pressing selected strings against frets with the fingers of the opposite hand.",
        "School is a necesity for every kid growing up. It helps them learn and grow and figure out what they want to do in their life. Some kids go on to take even more school after what is required",
        "Cars are the world's number one way to get somewhere. A large portion of the world owns a car and is able to drive them. Every person has to take a test before they are allowed to drive."]
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoTxt: UITextView!

    @IBAction func searchButtonAction(_ sender: Any) {
        if(guitar_keywords.contains(searchTextField.text!)){
            topic = 0
            imageNumber = 0
            resultImage.image = UIImage(named:arr[0][0])
            topicInfoTxt.text = topics_array[0]
            
            prevBtn.isHidden = false
            resetButton.isHidden = false
            nextButton.isHidden = false
            prevBtn.isEnabled = false
            nextButton.isEnabled = true
        }
        else if(school_keywords.contains(searchTextField.text!)){
            topic = 1
            imageNumber = 0
            resultImage.image = UIImage(named:arr[1][0])
            topicInfoTxt.text = topics_array[1]
            
            prevBtn.isHidden = false
            resetButton.isHidden = false
            nextButton.isHidden = false
            prevBtn.isEnabled = false
            nextButton.isEnabled = true
        }
        else if(car_keywords.contains(searchTextField.text!)){
            topic = 2
            imageNumber = 0
            resultImage.image = UIImage(named:arr[2][0])
            topicInfoTxt.text = topics_array[2]
            
            prevBtn.isHidden = false
            resetButton.isHidden = false
            nextButton.isHidden = false
            prevBtn.isEnabled = false
            nextButton.isEnabled = true
            
        }
        else{
            resultImage.image = UIImage(named:"noPhoto")
            topicInfoTxt.text = ""
            
            prevBtn.isHidden = true
            resetButton.isHidden = true
            nextButton.isHidden = true
        }
    }
    
    @IBAction func showPrvImageBtn(_ sender: Any) {
        imageNumber -= 1
        if(nextButton.isEnabled == false && imageNumber < 4){
            nextButton.isEnabled = true
        }
        resultImage.image = UIImage(named:arr[topic][imageNumber])
        
        if(imageNumber == 0){
            prevBtn.isEnabled = false
        }
    }
    
    @IBOutlet weak var prevBtn: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var srchButton: UIButton!
    
    @IBAction func resetBtn(_ sender: Any) {
        resultImage.image = UIImage(named:"welcome")
        topicInfoTxt.text = ""
        searchTextField.text = ""
        prevBtn.isHidden = true
        resetButton.isHidden = true
        nextButton.isHidden = true
        srchButton.isEnabled = false
    }
    
    @IBAction func showNxtImageBtn(_ sender: Any) {
        imageNumber += 1
        if(prevBtn.isEnabled == false && imageNumber > 0){
            prevBtn.isEnabled = true
        }
        resultImage.image = UIImage(named:arr[topic][imageNumber])
        
        if(imageNumber == 4){
            nextButton.isEnabled = false
        }
    }
}

