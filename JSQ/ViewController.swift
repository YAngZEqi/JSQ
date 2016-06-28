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
    var Flag:Bool=false;

    @IBAction func Equal(sender: UIButton) {
        let value = sender.currentTitle!
        if value == "AC" {
            resultLable.text = "0"
            return
        }else if value == "+"||value == "-"||value == "*"||value == "/" {
            operand = value
            operand1 = resultLable.text!;
            resultLable.text = ""
            Flag=false;
            return
        }else if value == "=" {
            
            switch operand {
                case "+":
                    resultLable.text = String(Double(operand1)!+Double(resultLable.text!)!);break;
                case "-":
                    resultLable.text = String(Double(operand1)!-Double(resultLable.text!)!);break;
                case "*":
                    resultLable.text = String(Double(operand1)!*Double(resultLable.text!)!);break;
                case "/":
                    if(operand2 != "0")
                    {resultLable.text = String(Double(operand1)!/Double(resultLable.text!)!);break;
                    }
                    else
                    {
                        resultLable.text="除数不能为零！";
                    }
                
            default:
                resultLable.text = "0"
            }
        }
        else if(value == ".")
        {
            if(!Flag)
            {
                resultLable.text!+=".";
                Flag=true;
            }
        }
        else if(resultLable.text == "0"){
            resultLable.text!="";
            resultLable.text! += value;
            return
        }
        else
        {
            resultLable.text! += value;
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

