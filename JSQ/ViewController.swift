//
//  ViewController.swift
//  JSQ
//
//  Created by 杨志权 on 16/6/23.
//  Copyright © 2016年 杨泽奇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLable: UILabel!
    
    var operand1:String = ""
    var operand2:String = ""
    var operand:String = ""
    
    
    
    
    @IBAction func Equal(sender: UIButton) {
        let value = sender.currentTitle!
        if value == "C" {
            resultLable.text = "0"
            return
        }else if value == "+"||value == "-"||value == "*"||value == "/" {
            operand = value
            resultLable.text = ""
            return
        }else if value == "=" {
            var result = 0.0
            
            switch operand {
                case "+":
                    result = Double(operand1)! + Double(operand2)!
                resultLable.text = "\(result)"
                case "-":
                    result = Double(operand1)! - Double(operand2)!
                    resultLable.text = "\(result)"
                case "*":
                    result = Double(operand1)! * Double(operand2)!
                    resultLable.text = "\(result)"
                case "/":
                    result = Double(operand1)! / Double(operand2)!
                    resultLable.text = "\(result)"
                
            default:
                result = 0
            }
            resultLable.text = "\(result)"
            operand = ""
            operand1 = ""
            operand2 = ""
            return
        }
        
        if operand == "" {
            operand1 = operand1 + value
            resultLable.text = "\(operand1)"
            return
        }
        else {
            operand2 = operand2 + value
            resultLable.text = "\(operand2)"
            return
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

