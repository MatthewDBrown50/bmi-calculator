import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(_ value: Float, _ advice: String, _ color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
    
    func getValue () -> Float {
        return self.value
    }
    
    func getAdvice () -> String {
        return self.advice
    }
    
    func getColor () -> UIColor {
        return self.color
    }
}
