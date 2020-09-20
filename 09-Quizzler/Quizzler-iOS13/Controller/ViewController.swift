//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    //
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // Check Answer
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        // Quiz Progression
        quizBrain.progressQuestion()
        
        // Delay UI update
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { timer in
            self.updateUI()
        }
        
    }
    
    func updateUI() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getQuizProgression()
        scoreLabel.text = quizBrain.getScore()
    }
}

 
