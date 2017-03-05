//
//  ViewController.swift
//  Methods
//
//  Created by Kangsan Lee on 3/3/17.
//  Copyright © 2017 Kangsan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var score:Int = 0;
    
    func didScore(points:Int) {
        score = score + points
        label.text = "Score: \(score)"
    }
    
    @IBAction func didHitAlient(_ sender: Any) {
        self.didScore(points: 5)
    }
    
    @IBAction func didHitShipt(_ sender: Any) {
        self.didScore(points: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.didScore(points: 1)
        self.didScore(points: 6)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

