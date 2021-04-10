//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Eleanor Kalu on 05.04.21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

// A struct QuizBrain contains the aarray quiy
// The quiz array contains the Question Struct
struct QuizBrain {
    
    let quiz = [
    
        Question(q: "Which is the largest organ in the human body?", a: ["A. Heart", "B. Skin", "C. Large Intestine"], ca: "Option B"),
        Question(q: "Five dollars is worth how many nickels?", a: ["A. 25", "B. 50", "C. 100"], ca: "Option C"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["A. Global Meridian Time", "B. Greenwich Mean Time", "C. General Median Time"], ca: "Option B"),
        Question(q: "What is the French word for 'hat'?", a: ["A. Chapeau", "B. Écharpe", "C. Bonnet"], ca: "Option A"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["A. Notebook", "B. Handkerchief", "C. Watch"], ca: "Option C"),
        Question(q: "How would one say goodbye in Spanish?", a: ["A. Au Revoir", "B. Adiós", "C. Salir"], ca: "Option B"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["A. Green", "B. Orange", "C. Blue"], ca: "Option B"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["A. Rum", "B. Whisky", "C. Gin"], ca: "Option A"),
        Question(q: "What type of animal was Harambe?", a: ["A. Panda", "B. Gorilla", "C. Crocodile"], ca: "Option C"),
        Question(q: "Where is Tasmania located?", a: ["A. Indonesia", "B. Australia", "C. Scotland"], ca: "Option B")
    ]
        
    var questionNumber = 0
    var score = 0
    
    
    // here we are creating an external paramer (answer... ) plus the internal parameter name (... userAnswer)
    // alternatively, for readability we can refer to the external parameter name as _ (_ ...)
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
       //  let actualAnswer = quiz[questionNumber].answer
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
        
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getOptionTextOne() -> String {
        return quiz[questionNumber].answers[0]
    }
    
    func getOptionTextTwo() -> String {
        return quiz[questionNumber].answers[1]
    }
    
    func getOptionTextThree() -> String {
        return quiz[questionNumber].answers[2]
    }
    
    
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count ) 
        return progress
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    // because the values are changed within the Struct - because the properties are going to be updated. The function updates to a mutating functing
    mutating func nextQuestion() -> Int {
        if (questionNumber + 1 < quiz.count) {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
        return questionNumber
    }

    

}
