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

    var game: Memory
    
    /// Array of cards in the UI
    @IBOutlet weak var cardButtons: UIButton!
    
    
    func flipCard() {
        // Flip the selected card
        print("Card Flipped")
    }
    
    func initialSetUp() {
        game = Memory(numberOfPairsOfCards: (Card))
    }
    
}

