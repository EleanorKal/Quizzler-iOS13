//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Eleanor Kalu on 05.04.21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", multipleChoice: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", multipleChoice:  ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", multipleChoice: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", multipleChoice: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", multipleChoice: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", multipleChoice: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", multipleChoice: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", multipleChoice: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", multipleChoice: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", multipleChoice: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        //
//        Question(q: "A slug's blood is green.", a: "True"),
//        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
//        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
//        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
//        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
//        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
//        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
//        Question(q: "Google was originally called 'Backrub'.", a: "True"),
//        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
//        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
//        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
//        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    // here we are creating an external paramer (answer... ) plus the internal parameter name (... userAnswer)
    // alternatively, for readability we can refer to the external parameter name as _ (_ ...)
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
       //  let actualAnswer = quiz[questionNumber].answer
        if userAnswer == quiz[questionNumber].correctAnswer {
//        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
        
    }
    
    func getQuestionText() -> String  {
        return quiz[questionNumber].text
        
    }
    
    func showMultipleChoice() -> String {
        // print(quiz[questionNumber].multipleChoice)
        return quiz[questionNumber].multipleChoice[questionNumber]
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
