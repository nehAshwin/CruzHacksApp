//
//  CircleImage.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/19/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        /*ZStack {
            Button("namaste") {
            }*/
            Image("Namaste")
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        /*}
        .overlay() {
            PopUpView(landmark: landmarks[0])
        }
        .ignoresSafeArea()*/
        
    }
}

#Preview {
    CircleImage()
}
