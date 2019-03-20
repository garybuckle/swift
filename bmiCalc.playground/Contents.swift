import UIKit

func bmiCalc(height : Float, weight : Float) -> String {
    var bmi = weight / pow(height, 2)
    let shortBmi =  String(format: "%.2f", bmi)
    
    var evaluation = ""
    return evaluation
}
