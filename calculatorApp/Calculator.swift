////
////  Calculator.swift
////  calculatorApp
////
////  Created by Gunveet Singh Dhillon on 2023-06-05.
////
//

import Foundation

class Calculator {
    private var values: [String] = []
    
    func push(value: String) {
        if isOperator(value) {
            values.append(value)
        }
        else {
            // Check if the previous value is an operand
            if let previousValue = values.last, !isOperator(previousValue) {
                // Append the current value to the previous value to form a multi-digit number
                values[values.count - 1] = previousValue + value
            }
            else {
                values.append(value)
            }
        }
    }
        
        func calculate() -> Int? {
            var operands: [Int] = []
            var operators: [String] = []
            
            for value in values {
                if let operand = Int(value) {
                    operands.append(operand)
                } else if isOperator(value) {
                    operators.append(value)
                } else {
                    // Invalid input
                    return nil
                }
            }
            
            // Check for invalid input: operators and operands should have the same count
            if operators.count != operands.count - 1 {
                return nil
            }
            
            // Calculate the result
            var result = operands[0]
            
            for i in 0..<operators.count {
                let operatorValue = operators[i]
                let operand = operands[i + 1]
                
                switch operatorValue {
                case "+":
                    result += operand
                case "-":
                    result -= operand
                case "*":
                    result *= operand
                case "/":
                    result /= operand
                default:
                    // Invalid operator
                    return nil
                }
            }
            
            return result
        }
        
        private func isOperator(_ value: String) -> Bool {
            return value == "+" || value == "-" || value == "*" || value == "/"
        }
        
        func clear() {
            values.removeAll()
        }
    }

