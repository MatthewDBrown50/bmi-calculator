import CoreGraphics
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue, "Eat more snacks", UIColor(red: 0.29, green: 0.91, blue: 0.90, alpha: 1.00))
        } else if bmiValue > 24.9 {
            bmi = BMI(bmiValue, "Slow down on snacks", UIColor(red: 0.84, green: 0.13, blue: 0.27, alpha: 1.00))
        } else {
            bmi = BMI(bmiValue, "Don't change a thing", UIColor(red: 0.36, green: 0.85, blue: 0.19, alpha: 1.00))
        }
    }
    
    func getBMIValue() -> Float {
        return self.bmi?.getValue() ?? 0.0
    }
    
    func getAdvice() -> String {
        return self.bmi?.getAdvice() ?? "error"
    }
    
    func getColor() -> UIColor {
        return self.bmi?.getColor() ?? .white
    }
}


