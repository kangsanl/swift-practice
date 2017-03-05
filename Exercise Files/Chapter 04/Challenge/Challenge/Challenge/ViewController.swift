//
//  ViewController.swift
//  Challenge
//
//  Created by Kangsan Lee on 3/4/17.
//  Copyright © 2017 Kangsan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count:Int = 0
    @IBOutlet weak var screen: UILabel!
    
    @IBAction func countBtn(_ sender: Any) {
        count += 1;
        if(count % 10 == 0){
            screen.text = "Label"
        }
        else {
            screen.text = "\(count)"
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

