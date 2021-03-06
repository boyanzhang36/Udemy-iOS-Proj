//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    //-----------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //-----------------

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f m", sender.value)
        heightLabel.text = height
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format:"%.0f kg",sender.value)
        weightLabel.text = weight
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
      
        let bmi = weightSlider.value / pow(heightSlider.value, 2)
        
        print(bmi)
        
        let secondVC = SecondViewController()
        self.present(secondVC, animated: true, completion: nil)
    }
    
    func updateUI() {
        
    }
    
}

