import UIKit

func bmiCalc(height : Double, weight : Double) -> String {
    let bmi = weight / pow(height, 2)
   let shortBmi =  String(format: "%.2f", bmi)
    var evaluation = ""

    if bmi > 25 {
        evaluation = "overweight"
    } else if bmi > 18.5 && bmi < 25 {
        evaluation = "considered normal weight"
    }
    else {
        evaluation = "underweight"
    }
    return "Your BMI is \(shortBmi)  and you are \(evaluation)"
}


var bmiResult = bmiCalc(height: 1.8, weight: 74)
