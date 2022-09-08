//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Peniel Abebe on 9/8/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .systemBlue)
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Very fit", color: .systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .systemRed)
        }
    }
    
    func getBMIValue() -> String{
        let bmiToDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    mutating func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
