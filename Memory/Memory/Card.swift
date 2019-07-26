//
//  Card.swift
//  Memory
//
//  Created by Gary Buckle on 26/07/2019.
//  Copyright © 2019 Gary Buckle. All rights reserved.
//

/// Represents a "Card" that is used in the "Concentration" game

import Foundation

struct Card {
    
// Is the current card facing up?
var isFaceUp = false

// Is the current card matched?
var isMatched = false

/// A unique identifier for the card.
/// (The pair of matching cards have the same identifier)
    var identifier:Int

// Create the Card with an id - using the init that will be called
init () {
    self.identifier = Card.getUniqueIdentifier()
}

/// Static identifier that is increased every time a new one is
/// requested by getUniqueIdentifier()

static var identifierFactory=0


/// Returns a unique id to be used as a card identifier
static func getUniqueIdentifier() ->Int{
    identifierFactory += 1
    return Card.identifierFactory
}
}
