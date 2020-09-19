//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime = ["Soft": 5*60, "Medium": 7*60, "Hard": 12*60]
    var secondFinal:Int = 0
    var secondCurrent: Int = 0
    var progress:Float = 0.0

    var timer = Timer()
    
    @IBOutlet weak var upLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        upLabel.text = hardness
        
        timer.invalidate()
        secondCurrent = 0
        secondFinal = eggTime[hardness]!
        progressBar.progress = 0.0

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    
    @objc func updateTimer() {
        progress = Float(secondCurrent) / Float(secondFinal)
        
        if progress < 1 {
            secondCurrent += 1
        } else {
            timer.invalidate()
            upLabel.text = "DONE"
        }
        progressBar.progress = progress
    }
    
}
