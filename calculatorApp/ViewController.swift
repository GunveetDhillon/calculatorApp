//
//  ViewController.swift
//  calculatorApp
//
//  Created by Gunveet Singh Dhillon on 2023-05-29.
//

import UIKit

class ViewController: UIViewController {
    
    var myCalculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func appendTolblResult(_ value: String) {
        if let existingText = lblResult.text {
            lblResult.text = "\(existingText)\(value)"
        } else {
            lblResult.text = value
        }
    }
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtviewHistory: UITextView!
    
    var calculationHistory: [String] = []
    
    
    // Connecting all IBAction functions from interface
    
    @IBAction func btn1(_ sender: Any) {
        // appendTolblResult.text = "1"
        appendTolblResult("1")
        myCalculator.push(value: "1")    }
    
    @IBAction func btn2(_ sender: Any) {
        // appendTolblResult.text = "2"
        appendTolblResult("2")
        myCalculator.push(value: "2")    }
    
    @IBAction func btn3(_ sender: Any) {
        // appendTolblResult.text = "3"
        appendTolblResult("3")
        myCalculator.push(value: "3")
        
    }
    
    @IBAction func btn4(_ sender: Any) {
        // appendTolblResult.text = "4"
        appendTolblResult("4")
        myCalculator.push(value: "4")
        
    }
    
    @IBAction func btn5(_ sender: Any) {
        // appendTolblResult.text = "5"
        appendTolblResult("5")
        myCalculator.push(value: "5")
        
    }
    
    @IBAction func btn6(_ sender: Any) {
        // appendTolblResult.text = "6"
        appendTolblResult("6")
        myCalculator.push(value: "6")
        
    }
    
    @IBAction func btn7(_ sender: Any) {
        // appendTolblResult.text = "7"
        appendTolblResult("7")
        myCalculator.push(value: "7")
        
    }
    
    @IBAction func btn8(_ sender: Any) {
        // appendTolblResult.text = "8"
        appendTolblResult("8")
        myCalculator.push(value: "8")
        
    }
    
    @IBAction func btn9(_ sender: Any) {
        // appendTolblResult.text = "9"
        appendTolblResult("9")
        myCalculator.push(value: "9")
        
    }
    
    @IBAction func btn0(_ sender: Any) {
        // appendTolblResult.text = "0"
        appendTolblResult("0")
        myCalculator.push(value: "0")
        
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        // appendTolblResult.text = "+"
        appendTolblResult("+")
        myCalculator.push(value: "+")
        
    }
    
    @IBAction func btnSubtract(_ sender: Any) {
        // appendTolblResult.text = "-"
        appendTolblResult("-")
        myCalculator.push(value: "-")
        
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        // appendTolblResult.text = "*"
        appendTolblResult("*")
        myCalculator.push(value: "*")
        
    }
    
    @IBAction func btnDivision(_ sender: Any) {
        // appendTolblResult.text = "/"
        appendTolblResult("/")
        myCalculator.push(value: "/")
        
    }
    
    @IBAction func btnClear(_ sender: Any) {
        lblResult.text = ""
        myCalculator.clear()
    }
    
    
    @IBAction func btnHistoryMode(_ sender: Any) {

        if txtviewHistory.isHidden {
               txtviewHistory.isHidden = false
               let newTitle = "Standard - No History"
            (sender as AnyObject).setTitle(newTitle, for: .normal)
           } else {
               txtviewHistory.isHidden = true
               let newTitle = "Advanced - With History"
               (sender as AnyObject).setTitle(newTitle, for: .normal)
           }
    }
    
    @IBAction func btnEquals(_ sender: Any) {
        // lblResult.text = "="
        appendTolblResult("=")
         if let result = myCalculator.calculate() {
             let calculation = "\(lblResult.text ?? "") = \(result)"
             lblResult.text = "\(result)"
                         
             // append the calculation to the history
             calculationHistory.append(calculation)
             
             // update the history text filed if it is visible
             if txtviewHistory.isHidden == false {
                 txtviewHistory.text = calculationHistory.joined(separator: "\n")
             }
             
         }else {
             lblResult.text = "Invalid input"
         }
        
     }
            
}
    

