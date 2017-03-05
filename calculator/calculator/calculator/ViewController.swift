//
//  ViewController.swift
//  calculator
//
//  Created by Kangsan Lee on 3/4/17.
//  Copyright © 2017 Kangsan Lee. All rights reserved.
//

import UIKit

enum modes {
    case not_set
    case addition
    case subtraction
    case multiplication
}
class ViewController: UIViewController {
    
    var labelString:String = "0"
    var currentMode:modes = .not_set
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false

    @IBOutlet weak var label: UILabel!
    @IBAction func didPressPlus(_ sender: Any) {
        changeMode(newMode: .addition)
    }
    
    @IBAction func didPressSubtract(_ sender: Any) {
        changeMode(newMode: .subtraction)
    }
    
    @IBAction func didPresMultiply(_ sender: Any) {
        changeMode(newMode: .multiplication)
    }
    
    @IBAction func didPressEquals(_ sender: Any) {
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        
        if (currentMode == .not_set || lastButtonWasMode) {
            return
        }
        
        if (currentMode == .addition) {
            savedNum += labelInt
        }
        else if (currentMode == .subtraction) {
            savedNum -= labelInt
        }
        else if (currentMode == .multiplication) {
            savedNum *= labelInt
        }
        currentMode = .not_set
        labelString = "\(savedNum)"
        updateText()
        lastButtonWasMode = true
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        let stringValue:String? = sender.titleLabel?.text
        
        if (lastButtonWasMode) {
            lastButtonWasMode = false
            labelString = "0"
        }
        labelString = labelString.appending(stringValue!)
        updateText()
    }
    
    @IBAction func didPressClear(_ sender: Any) {
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        lastButtonWasMode = false
        label.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateText() {
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        if (currentMode == .not_set) {
            savedNum = labelInt
        }
        
        let formatter:NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let num:NSNumber = NSNumber(value:labelInt)
        label.text = formatter.string(from: num)
    }
    
    func changeMode(newMode:modes) {
        
        if (savedNum == 0) {
            return
        }
        
        currentMode = newMode
        lastButtonWasMode = true
    }
    
    

}

