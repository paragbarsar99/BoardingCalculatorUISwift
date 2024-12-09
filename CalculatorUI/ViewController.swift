//
//  ViewController.swift
//  CalculatorUI
//
//  Created by parag on 06/12/24.
//

import UIKit

enum OPERATIONS {
       case add
       case subtract
       case multiply
       case divide
       case modulus
       case clear
        
}

class ViewController: UIViewController {
    
    
    let operators: Set<Character> = ["+", "-", "*", "/", "=", "%"]

    
    @IBOutlet weak var Input: UILabel!
    
    var input:String = "0";
    
    
    @IBOutlet weak var InputField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func onClear(_ sender: UIButton) {
        input = "0"
        InputField.text = input
    }
    
    @IBAction func Divide(_ sender: UIButton) {
        input.append("/")
        InputField.text = input

    }
    
    @IBAction func Moduler(_ sender: UIButton) {
        input.append("%")
        InputField.text = input
        
    }
    
    @IBAction func Mutiplication(_ sender:UIButton){
        input.append("*")
        InputField.text = input
    }
    
    @IBAction func Subtraction(_ sender:UIButton){
        input.append("-")
        InputField.text = input
    }
    
    
    @IBAction func Add(_ sender:UIButton){
        input.append("+")
        InputField.text = input
    }
    
    
    
    @IBAction func nine(_ sender:UIButton){
        input.append("9")
        InputField.text = input
    }
    
    
    @IBAction func eight(_ sender:UIButton){
        input.append("8")
        InputField.text = input
    }
    
    
    @IBAction func seven(_ sender:UIButton){
        input.append("7")
        InputField.text = input
    }
    
    
    @IBAction func six(_ sender:UIButton){
        input.append("6")
        InputField.text = input
    }
    
    @IBAction func five(_ sender:UIButton){
        input.append("5")
        InputField.text = input
    }
    
    
    @IBAction func four(_ sender:UIButton){
        input.append("4")
        InputField.text = input
    }
    
    @IBAction func three(_ sender:UIButton){
        input.append("3")
        InputField.text = input
    }
    
    @IBAction func two(_ sender:UIButton){
        input.append("2")
        InputField.text = input
    }
    
    @IBAction func one(_ sender:UIButton){
        input.append("1")
        InputField.text = input
    }
   
    
    @IBAction func Sum(_ sender: UIButton) {
      let operations =  input.split(separator: ",")
      let finalResult =  operations.reduce(0) { prev, current in
           return 0
        }
        print(finalResult)
    }
    
    
    func checkIfBinayInBetweenNumbers(_ char:String){
        if operators.contains(char){
            input.append(char)
        }else{
            input += char
        }
        InputField.text = input
    }
    
    func operations(type:OPERATIONS,firstValue:Int,secondValue:Int){
        
        switch type{
            
        case .add:
//            input = firstValue+secondValue
            break;
        case .subtract:
//            input = firstValue-secondValue
            break
        case .multiply:
//            input = firstValue * secondValue
            break
        case .divide:
//            input = firstValue/secondValue
            break
        case .modulus:
//            input = firstValue % secondValue
            break
        case .clear:
//            input = 0
            break
            
        }
        InputField.text = String(input)
    }
}

