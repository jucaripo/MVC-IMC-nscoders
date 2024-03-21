//
//  ContentView.swift
//  MVC-BMICaluladora
//
//  Created by Juan Carlos Ricalde Poveda on 3/20/24.
//

import SwiftUI

// Vista: Muestra la UI y se comunica con el controlador para calcular el IMC.
struct ContentView: View {
    @State private var height: String = ""
    @State private var weight: String = ""
    @ObservedObject var controller = BMIController()

    var body: some View {
        VStack {
            Text("Calculadora de IMC")
                .font(.title)
                .padding()
            Text("demo NsCoders México")
                .font(.caption)
                .padding()

            TextField("Altura en metros", text: $height)
                .padding()
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Peso en kilogramos", text: $weight)
                .padding()
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                // Convertir entrada de usuario a Double y calcular el IMC
                if let height = Double(height), let weight = Double(weight) {
                    controller.calculateBMI(height: height, weight: weight)
                }
            }) {
                Text("Calcular")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(40)
            }

            // Mostrar el resultado del IMC
            if controller.bmiResult > 0 {
                Text("Tu IMC es: \(controller.bmiResult, specifier: "%.2f")")
                    .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
