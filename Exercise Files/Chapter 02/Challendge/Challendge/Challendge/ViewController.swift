//
//  ViewController.swift
//  Challendge
//
//  Created by Kangsan Lee on 3/3/17.
//  Copyright © 2017 Kangsan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stringLabel: UILabel!
    @IBOutlet weak var integerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let sLabel:String = "This is a String label"
        let score:Int = 100
        stringLabel.text = sLabel
        integerLabel.text = "\(score)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

