import UIKit

var str = "Hello, playground"

func getMilk(howManyBottles : Int , howMuchMoney : Int) -> Int {
    print("Robot is going to the shops")
    print("Robot has given us £\(howMuchMoney) and she wants \(howManyBottles) bottles of milk")
    let priceOfBottle = 5
    let order = howManyBottles * priceOfBottle
    let change = howMuchMoney - order
    if order < howMuchMoney {
        print("Robot gets £\(change) back - thanks please come again and enjoy the milk!")
        return change
    }
    else {
         print("Sorry but £\(howMuchMoney) is not enough \(howManyBottles) bottles  costs £\(order)")
        return change
    }
    
   
}

getMilk(howManyBottles: 20,howMuchMoney: 102)


