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
    var firstValue = ""
    var secondValue = ""
    var result = 0.0

    @IBOutlet weak var ResultShowLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func ButtonPressedValue(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
        
        firstElement = firstElement + String(tag)

                   ResultShowLbl.text = firstElement
        
    }
    
    @IBAction func Equal(_ sender: Any) {
        
        secondValue = firstElement
         ResultShowLbl.text = firstValue + secondValue
        
    }
    
    @IBAction func Operation(_ sender: Any) {
        
        firstValue = firstElement
        firstElement = ""
        let tag = (sender as! UIButton).tag
        if tag == 13{
          
            
           
//        result = firstValue
            
            ResultShowLbl.text = firstElement
        }
        
    }

    @IBAction func ClearAll(_ sender: Any) {
     firstElement = ""
        ResultShowLbl.text = "0"
        firstValue = ""
        secondValue = ""
    }
}

