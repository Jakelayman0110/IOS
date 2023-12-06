//
//  ViewController.swift
//  Layman_Wordguess
//
//  Created by Jacob Layman on 10/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    
    var words = ["Tree", "Headphones", "Blanket", "Apple", "Pencil"]
    var hints = ["It is a staple in nature", "Helpful when listening to music", "Keeps you warm", "Both a phone and food", "Helps you get your assignments done"]
   
    var maxNumOfWrongGuesses = 10
    
    var currWord = 0
   
    var totalWordsGuessed = 0
    var totalWordsRemaining = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wordsGuessedLabel.text!.append(String(totalWordsGuessed))
        wordsRemainingLabel.text!.append(String(totalWordsRemaining))
        totalWordsLabel.text!.append("5")
        playAgainButton.isHidden = true
        userGuessLabel.text = String(repeating: "_", count: words[currWord].count)
    }

    @IBAction func guessLetterButtonPressed(_ sender: Any) {
        var letter = guessLetterField.text!.last
        if(words[currWord].contains(letter!)){
            var pos = words[currWord].firstIndex(of: letter!)
            guessLetterField.text!.remove(at: pos!)
        }
        
        if(!userGuessLabel.text!.contains("_")){
            totalWordsGuessed += 1
            totalWordsRemaining -= 1
            currWord += 1
            wordsGuessedLabel.text = "Total number of words guessed successfully: \(totalWordsGuessed)"
            wordsRemainingLabel.text = "Total number of words remaining in game: \(totalWordsRemaining)"
            
        }

    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
    }
}

