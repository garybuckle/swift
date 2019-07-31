//
//  ViewController.swift
//  Memory
//
//  Created by Gary Buckle on 26/07/2019.
//  Copyright © 2019 Gary Buckle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        initialSetUp()
    }
    
    private var game: Memory!
    // Set up the array of card buttons
    @IBOutlet  var cardButtons: [UIButton]!
    // Flip Count Label
    @IBOutlet weak var flipCountLabel: UILabel!
    //Action to handle when a card is touched
    @IBAction func touchCard(_ sender: UIButton) {
        print("Card touched")
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            print("Card Number /(cardNumber)")
        }
    }
    
    //init and count flips
    var flipCount  = 0 {
        didSet {
            flipCountLabel.text = "Flips:\(flipCount)"
            print("Flipcount \(flipCount)")
            flipCount += 1
        }
    }
    
    
    
    


    func flipCard() {
        // Flip the selected card
        print("Card Flipped")
    }
    
    func initialSetUp() {
        game = Memory(numberOfPairsOfCards: (cardButtons.count + 1)/2)
        
    }
    
    
    //Each card/button will have a corresponding emoji
    // Set up an array of emojis
    private var emoji = [Card : String]()
    
}

