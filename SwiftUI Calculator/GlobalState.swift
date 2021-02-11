//
//  GlobalState.swift
//  SwiftUI Calculator
//
//  Created by Gobind Puniani on 2/8/21.
//

import Foundation

class GlobalState: ObservableObject {
    @Published var display = "0"
    
    var storedValue: Double? = nil
    var operation: CalculatorKey? = nil
    var beginInput: Bool = true
    
    
    
    
    func keyPressed(key: CalculatorKey) {
        switch key {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            if beginInput {
                display = key.rawValue
                beginInput = false
            }
            else {
                display = display + key.rawValue
            }
            
        case .plus, .minus, .multiply, .divide:
            if storedValue == nil {
                storedValue = Double(display)
                operation = key
                beginInput = true
            }
            else {
                if beginInput {
                    operation = key
                }
                else {
                    calculate()
                    beginInput = true
                    operation = key
                }
            }
            
        case .equal:
            calculate()
            beginInput = true
            
        case .dot:
            if display.contains(CalculatorKey.dot.rawValue) {
                break
            }
            else {
                display = display + CalculatorKey.dot.rawValue
            }
            
        case .plusMinus:
            if display[0] == CalculatorKey.minus.rawValue {
                display.remove(at: display.startIndex)
            }
            else {
                display = CalculatorKey.minus.rawValue + display
            }
        
        case .percent:
            var displayAsDouble: Double = Double(display) ?? 0.0
            displayAsDouble *= 0.01
            storedValue = displayAsDouble
            display = String(displayAsDouble)
            
        case .allClear, .clear:
            display = CalculatorKey.zero.rawValue
            storedValue = nil
            beginInput = true
        }
    }
    
    func calculate() {
        let a = storedValue ?? 0
        let b = Double(display) ?? 0
        var answer: Double = 0
        
        switch operation {
        case .plus:
            answer = a + b
        case .minus:
            answer = a - b
        case .multiply:
            answer = a * b
        case .divide:
            answer = a / b
        default:
            break
        }
        
        storedValue = answer
//        If `answer` is mathematically equivalent to an integer, then convert to integer
//        if answer == floor(answer) {
//            let stringAnswer: String = String(Int(answer))
//            display = stringAnswer
//        }
        display = String(answer)
        
    }
}
