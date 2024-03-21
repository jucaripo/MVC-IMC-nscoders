//
//  BMIModel.swift
//  MVC-BMICaluladora
//
//  Created by Juan Carlos Ricalde Poveda on 3/20/24.
//

import Foundation


// Modelo: Maneja la lógica de cálculo del IMC.
struct BMIModel {
    
    var bmiResult: Double = 0.0 // Almacena el resultado del IMC
    
    // Calcula el IMC basado en la altura (metros) y el peso (kilogramos).
    mutating func calculateBMI(height: Double, weight: Double) {
            bmiResult = weight / (height * height)
        
    }
}
