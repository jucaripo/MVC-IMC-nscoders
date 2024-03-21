//
//  BMIController.swift
//  MVC-BMICaluladora
//
//  Created by Juan Carlos Ricalde Poveda on 3/20/24.
//

import Foundation

// Controlador: Intermediario entre la vista y el modelo.
class BMIController: ObservableObject {
    
    // Referencia al modelo
    @Published private var model = BMIModel()
    
    
    var bmiResult: Double{
        model.bmiResult
    }
    
    // Calcula el IMC usando el modelo y actualiza la propiedad publicada.
    func calculateBMI(height: Double, weight: Double) {
            model.calculateBMI(height: height, weight: weight)
            // Avisar a la vista que el modelo ha sido actualizado.
            self.objectWillChange.send()
        }
}
