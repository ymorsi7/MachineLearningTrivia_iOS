//
//  Answer.swift
//  MLTrivia
//
//  Created by Yusuf Morsi on 4/6/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID() // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for each answer
    var text: AttributedString
    var isCorrect: Bool
}
