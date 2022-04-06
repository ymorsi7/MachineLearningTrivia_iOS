//
//  ContentView.swift
//  MLTrivia
//
//  Created by Yusuf Morsi on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Machine Learning Trivia")
                        .foregroundColor(Color.white)
                        .lilacTitle()
                    
                    Text("How much do you know?")
                        .fontWeight(.regular)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.042, brightness: 0.87))
                }
                
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Let's go!")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.04, green: 0.42, blue: 0.64))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
