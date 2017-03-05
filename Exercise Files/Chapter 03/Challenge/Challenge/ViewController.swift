//
//  ViewController.swift
//  Challenge
//
//  Created by Kangsan Lee on 3/3/17.
//  Copyright © 2017 Kangsan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenLabel: UILabel!
    
    @IBAction func sayHello(_ sender: Any) {
        self.say(message: "Hello")
    }
    
    @IBAction func sayGoodbye(_ sender: Any) {
        self.say(message: "Goodbye")
    }
    
    func say(message: String) {
        screenLabel.text = message
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

