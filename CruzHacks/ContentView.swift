//
//  ContentView.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("UC Santa Cruz")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Namaste Lounge")
                        
                    Spacer()
                    Text("College 9")
                }
                .font(.subheadline)
                Divider()
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
