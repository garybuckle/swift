//
//  ViewController.swift
//  Memory
//
//  Created by Gary Buckle on 26/07/2019.
//  Copyright © 2019 Gary Buckle. All rights reserved.
//  Lecture 3 UI compliant

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       initialSetUp()
    }
    
    private var game: Memory!
    
    var numberOfPairsOfCards : Int {
        return (cardButtons.count + 1) / 2
    }
    
    
    public var  flipCount:Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    // Set up UI
    // Set up the array of card buttons
    @IBOutlet  var cardButtons: [UIButton]!

    // Flip Count Label
    @IBOutlet private weak var flipCountLabel: UILabel!

    //Action to handle when a card is touched
    @IBAction private func touchCard(_ sender: UIButton) {
        flipCount += 1
        print("Card Flipped")
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            //Choose the card at cardNumber
            game.chooseCard(at: cardNumber)
//             Set up the emojis on the cards
            updateViewFromModel()
            
        } else {
            print("Card not found!!!")
        }
    }
    
    @IBAction private func newGame(_ sender: Any) {
        print("New Game")
        initialSetUp()
        updateViewFromModel()
    }
    

    
    //init and count flips
   
    
    
    
   private func initialSetUp() {
        // How many cards do we have?
        game = Memory(numberOfPairsOfCards: numberOfPairsOfCards)
       // Reset flips
        flipCount = 0
        
    }
    
    func updateViewFromModel()  {
        // For each button in the array
        for index in cardButtons.indices {
            // assign a button and a card to each element in the button array
            let button = cardButtons[index]
            let card = game.cards[index]
            // face up or down?
            if card.isFaceUp {
                // set the emoji
                button.setTitle(emoji(for:card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                // Card is matched then its opaque otherwise its green
                button.backgroundColor = card.isMatched ?  #colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 0):#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1)
            }
        }
    }

    
    
    //Each card/button will have a corresponding emoji
    // Set up an array of emojis
   private var emojiChoices = ["👻","🍅","💀","🎃","🤡","🦹🏼‍♂️","🤖","👽","👿","👺","🤠","😈"]
    
    //Boom! set up an array of emojis
    private var emoji = [Int : String]()
    
    
    // Put the emoji on the card
    
    private func emoji(for card:Card) -> String {
        // Takes a Card and returns an emoji
        // Check the ere is not an emoji already assigned and there are still emojis in the array
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
            // create a random
            let randomIndex = Int (arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        //return the given emoji or ? if not found
        return emoji[card.identifier] ?? "?"
    }
    
   
    
    
}

