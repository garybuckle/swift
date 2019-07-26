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


/// Build a Concentration game based on the given number of card-pairs
    init (numberOfPairsOfCards:Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            //add pairs
            cards.append(card)
            cards.append(card)
        }
        
        //Shuffle the cards
        cards.shuffle()
    }
    
/// Keep track of which cards have been seen, for instance, to
/// penalize the player if they mismatch cards already seen.
    private var seenCards: Set<Int> = []    
    
/// Whether or not we have ONLY one card face-up
var indexOfOneAndOnlyFaceUpCard:Int?


/// Track the number of flips the user has done
var flipCount = 0

/// Keep track of the game's score
var score = 0

/// Handle what to do when a card is chosen

func cardChosen(at index:Int)  {
    // If chosen card is already matched, ignore it (return)
    if cards[index].isMatched {
        return
    }
    
    
    // Increment flipCount
    flipCount += 1

    // If we have a card facing up already, check if it matches the chosen one
    if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
        // If they match, mark them as matched

        
    }


    // Increase the score

    // Chosen pair of cards didn't match

    // Penalize 1 point for every previously seen card that is involved in a mismatch.

    // Penalize 1 point for every previously seen card that is involved in a mismatch.

    
    // Both cards have been seen by now

    
    // We don't have oneAndOnly cards up

    
    // Either two cards or no cards are face up

    // We now have only 1 card face-up

}
}
