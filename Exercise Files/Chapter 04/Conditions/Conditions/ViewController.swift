//
//  ViewController.swift
//  Conditions
//
//  Created by Kangsan Lee on 3/3/17.
//  Copyright © 2017 Kangsan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let userIsLoggedIn:Bool = true
        
        if (userIsLoggedIn) {
            print("give user access!")
        }
        else {
            print("no access for you!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

