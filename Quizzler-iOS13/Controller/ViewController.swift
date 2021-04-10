//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Eleanor Kalu on 3 April 2021.
//  Copyright © 2021 Blarnya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var multipleChoiceLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    
    
    var quizBrain = QuizBrain()
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // loads the first question
        updateUI()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // True, or False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
//        print(sender.currentTitle ?? "")
//        print(userAnswer)
        

        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
         
        // safetyCheck()
        quizBrain.nextQuestion()
        
        let seconds = 0.3
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            self.updateUI()
        }
    
    }
        
    func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        multipleChoiceLabel.text = quizBrain.showMultipleChoice()
        progressBar.progress = quizBrain.getProgress()
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    
}

