//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Eleanor Kalu on 3 April 2021.
//  Copyright © 2021 Blarnya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
        
    let quiz = [
        Question(text: "Four + Two is equal to Six.", answer: "True"),
        Question(text: "Five - Three is greater than One.", answer: "True"),
        Question(text: "Three + Eight is less than Ten.", answer: "False")
    ]
    
    let quizQuestion = [
        "Four + Two is equal to Six.",
        "Five - Three is greater than One.",
        "Three + Eight is less than Ten."
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // loads the first question
        updateUI()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // True, or False
        _ = quiz[questionNumber]
        let actualAnswer = quiz[questionNumber].answer
        print(sender.currentTitle ?? "")
        print(userAnswer)

        if userAnswer == actualAnswer {
            print("right")
        } else {
            print("wrong")
        }
         
        // safetyCheck()
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
        
    }
        
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        // questionLabel.text = quizQuestion[questionNumber]
        
    }
    
    

    
    //    func safetyCheck() {
    //        if (questionNumber >= 2) {
    //            // questionLabel.text = quizQuestion[2]
    //            let seconds = 2.0
    //            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
    //                // Put your code which should be executed with a delay here
    //            }
    //            print("quiz over")
    //            questionLabel.text = "QUIZ COMPLETE"
    //        } else {
    //            questionNumber += 1
    //        }
    //    }
}

