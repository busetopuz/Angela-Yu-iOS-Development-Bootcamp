//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Buse Topuz on 13.07.2022.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
    
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace

    }
    
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
    }
    
    
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? UIColor.white
    }
}

