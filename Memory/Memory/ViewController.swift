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
    }

    private var game: Memory!
    
    @IBOutlet  var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        print("Card touched")
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            print(cardNumber)
        }
    }
    




    func flipCard() {
        // Flip the selected card
        print("Card Flipped")
    }
    
    func initialSetUp() {
        game = Memory(numberOfPairsOfCards: (cardButtons.count))
    }
    
    
    //Each card/button will have a corresponding emoji
    // Set up an array of emojis
    private var emoji = [Card : String]()
    
}

