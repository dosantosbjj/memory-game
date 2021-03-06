//
//  ViewController.swift
//  MemoryGame
//
//  Created by Nelogica Sistemas de Software Ltda on 09/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            FlipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var FlipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻","🎃","👻","🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
    
        }else{
            print("chosen card was not in cardButtons")
        }
        
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}


