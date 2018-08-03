//
//  ViewController.swift
//  Egg Timer
//
//  Created by Seth Walton on 8/2/18.
//  Copyright © 2018 Seth Walton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    @objc func decreaseTimer(){
        
        if time > 0{
            time -= 1
            
            timerLabel.text = String(time)
        } else {
            timer.invalidate()
        }
        
        
    }
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func plus10(_ sender: Any) {
        time = time + 10
    }
    
    @IBAction func minus10(_ sender: Any) {
        time = time - 10
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        time = 210
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

