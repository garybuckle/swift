import UIKit




func beerSong(forThisManyBottles totalBottles :Int) -> String {
    var lyrics: String = ""
    
    for number in (3...totalBottles).reversed() {
        
        var newLine: String = "\n \(number) bottles of beer on the wall, \n \(number) bottles of beer.\n Take one down and pass it around, \n \(number - 1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    
    
    lyrics += "\n1 more bottle of beer on the wall, \n1 more bottle of beer. \nGo to the shop and buy some more! \n\(totalBottles) bottles of beer on the wall!"
    return lyrics
    
    
    lyrics += "\nNo more bottles of beer on the wall, \nNo more bottles of beer. \nGo to the shop and buy some more! \n\(totalBottles) bottles of beer on the wall!"
    return lyrics
}
print(beerSong(forThisManyBottles:5))
