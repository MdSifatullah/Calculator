//
//  ViewController.swift
//  Calculator
//
//  Created by Md Sifat on 12/1/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstElement: String = ""
    var firstValue = 0.0
    var secondValue = 0.0
    var result = 0.0
    var MathOperation = false
    var operation = 0
    var point = "."

    @IBOutlet weak var ResultShowLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func ButtonPressedValue(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
   
        firstElement = firstElement + String(tag)
            ResultShowLbl.text = firstElement
        
        if (MathOperation == true){
        secondValue = Double(firstElement)!
        }else{
            firstValue = Double(firstElement)!
        }
        
    }

    


    @IBAction func Operation(_ sender: Any) {

        let tag = (sender as! UIButton).tag
   if firstElement != "" && tag != 10 && tag != 17 {
     //firstValue = Double(firstElement)!

     if tag == 11 { //Divide

           firstElement = ""
        ResultShowLbl.text = firstElement ;


     }

     if tag == 14 { //Multiply
        firstElement = ""
     ResultShowLbl.text = firstElement ;

     }

     if tag == 12 { //Subtract
           firstElement = ""
        ResultShowLbl.text = firstElement ;

     }

     if tag == 13 { //Add
           firstElement = ""
            ResultShowLbl.text = firstElement ;

     }

     operation = tag

     MathOperation = true;

     }

     else if tag == 17 {

     if operation == 11{ //Divide

     ResultShowLbl.text = String(firstValue / secondValue)

     }

     else if operation == 14{ //Multiply

     ResultShowLbl.text = String(firstValue * secondValue)

     }

     else if operation == 12{ //Subtract

     ResultShowLbl.text = String(firstValue - secondValue)

     }

     if operation == 13{ //Add

     ResultShowLbl.text = String(firstValue + secondValue)

     }

     }

     else if tag == 10{
     
    firstElement = ""
    firstValue = 0.0
    secondValue = 0.0
    result = 0.0
    MathOperation = false
    operation = 0
    ResultShowLbl.text = firstElement

     

     }





//        MathOperation = true
//        let tag = (sender as! UIButton).tag
//        if tag == 13{
//
//                    ResultShowLbl.text = ""
//            result += firstValue + firstValue
//
//
//            MathOperation = false
//            firstElement = "0"
//        }

    }

}

