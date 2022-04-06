//
//  TriviaView.swift
//  MLTrivia
//
//  Created by Yusuf Morsi on 4/6/22.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("ML Trivia")
                    .lilacTitle()

                Text("You have completed the quiz!")
                    .foregroundColor(Color.white)
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                    .foregroundColor(Color.white)
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.04, green: 0.42, blue: 0.64))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
