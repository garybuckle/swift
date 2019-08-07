//
//  Memory.swift
//  Memory
//
//  Created by Gary Buckle on 26/07/2019.
//  Copyright © 2019 Gary Buckle. All rights reserved.
//

import Foundation

class Memory {
    // Create an array of Cards
    var cards = [Card]()
    // One card might be facing up
    var indexOfOneAndOnlyFaceUpCard: Int?
    // flipcount
    var flipCount = 0
    // Keep the score
    var score : Int = 0
    
    
    /// Set up the numbers of pairs array
    init (numberOfPairsOfCards:Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            //add pairs
            cards.append(card)
            cards.append(card)
        }
        cards.shuffle()
        
        //Shuffle the cards
        //cards.shuffle()
    }
    
    
    /// Handle what to do when a card is chosen Note - card index points to the current card
    
    func chooseCard(at index:Int)  {
        // No cards match but increase flipcount
        
        print("Card \(cards[index].identifier) chosen")
        //flipCount += 1
        // If chosen card is not matched
        if !cards[index].isMatched {
            // matchIndex is set if its the same as oneandonly and its not the current card
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //do the identifiers match
                if cards[matchIndex].identifier == cards[index].identifier {
                    //identifiers match so set the card properties accordingly
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                //flip this card
                cards[index].isFaceUp = true
                //reset the index of one and only
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                // either no cards are face up or two cards are face up so turn them over
                for flipIndex in cards.indices {
                    cards[flipIndex].isFaceUp = false
                }
                // Turn the chose card up
                cards[index].isFaceUp = true
                // set one and only index  to this card
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
}

