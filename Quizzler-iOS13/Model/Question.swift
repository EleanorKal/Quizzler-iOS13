//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Eleanor Kalu on 03.04.21.
//  Copyright © 2021 Blarnya. All rights reserved.
//

import Foundation

// Original Struct
//struct Question {
//    let text: String
//    let answer: String
//
//    init(q: String, a: String) {
//        text = q
//        answer = a
//    }
//}

struct Question {
    let text: String
    let multipleChoice: [String]
    let correctAnswer: String
    
    init(q: String, multipleChoice: [String], correctAnswer: String) {
        text = q
        self.multipleChoice = multipleChoice
        self.correctAnswer = correctAnswer
    }
}


