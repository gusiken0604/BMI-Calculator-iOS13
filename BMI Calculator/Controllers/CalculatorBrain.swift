//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 具志堅 on 2022/11/05.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmivalue = weight / (height * height)
        
        if bmivalue < 18.5 {
            bmi = BMI(value: bmivalue, advice: "Eat more pies!", color: UIColor.cyan)
        } else if bmivalue < 24.9 {
            bmi = BMI(value: bmivalue, advice: "Fit as fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmivalue, advice: "Eat less pies!", color: UIColor.magenta)
        }
        
    }
    

}
