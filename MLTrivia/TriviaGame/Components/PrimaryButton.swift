//
//  PrimaryButton.swift
//  MLTrivia
//
//  Created by Yusuf Morsi on 4/6/22.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color(hue: 0.627, saturation: 0.932, brightness: 0.749)
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}
