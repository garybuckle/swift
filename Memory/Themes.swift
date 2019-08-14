//
//  Themes.swift
//  Memory
//
//  Created by Gary Buckle on 13/08/2019.
//  Copyright © 2019 Gary Buckle. All rights reserved.
//

import Foundation
import UIKit

struct Theme{
    
    var emojiSet:[String]
    var backgroundColour: UIColor
    var cardColour : UIColor
//    var halloween = ["👻","🍅","💀","🎃","🤡","🦹🏼‍♂️","🤖","👽","👿","👺","🤠","😈"]
//    var fruit = ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🍈","🍒","🍑"]
//    var sports = ["⚽️","🏀","🏈","⚾️","🥎","🎾","🏐","🏉","🎱","🏓","🏸","🥍"]
//    var travel = ["🚒","🚛","🚜","🛵","🏍","🚞","✈️","🚀","🚦","🎠","🚆","⛵️"]
//    var flags = ["🇧🇪","🇱🇷","🇿🇦","🇬🇧","🇹🇴","🇳🇴","🇲🇻","🇯🇲","🇧🇷","🏁","🇩🇯","🇨🇨"]
    
   
    
    
    private static var themes : [Theme] {
        
        return [
            
            Theme(emojiSet: ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐"], backgroundColour: UIColor.black, cardColour:UIColor.magenta)
            
        ]
    }
    
    
   
}

