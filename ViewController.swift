//
//  ViewController.swift
//  calculator
//
//  Created by Mac on 22/09/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberonscreen: Double = 0
    var previousnumber:Double = 0
    var performingmath = false
    var operation = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if performingmath == true
        {
            //label.text = label.text! + String(sender.tag-1)
            label.text = String(sender.tag-1)
            numberonscreen = Double(label.text!)!
            performingmath = false
            
        }
        else
        {
        label.text = label.text! + String(sender.tag-1)
        
        
        //label.text = label.text! + String(sender.tag-1)
        numberonscreen = Double(label.text!)!
        }
    }
    
    
    

    @IBAction func buttons(_ sender: UIButton) {
    
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        { previousnumber = Double(label.text!)!
            if sender.tag == 12
            {4
                label.text = "/"
            }
            else if sender.tag == 13
            {
                label.text = "*"
            }
            else if sender.tag == 14
            {
                label.text = "-"
            }
            else if sender.tag == 15
            {
                label.text = "+"
            }
            operation = sender.tag
            performingmath = true
        }
       else if sender.tag == 16
        {
            if  operation == 12
          {
            label.text = String(previousnumber / numberonscreen)
            }
            else if operation == 13
            {
                label.text = String(previousnumber * numberonscreen)
            }
            else if operation == 14
            {
               label.text = String(previousnumber - numberonscreen)
            }
            else if operation == 15
            {
                label.text = String(previousnumber + numberonscreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousnumber = 0
            numberonscreen = 0
            operation = 0
        }
    }
}

