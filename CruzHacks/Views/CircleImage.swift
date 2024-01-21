//
//  CircleImage.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/19/24.
//

import SwiftUI

struct CircleImage: View {
    
    @EnvironmentObject var sheetManager: SheetManager
    
    var body: some View {
        VStack {
            Button("namaste") {
                sheetManager.present()
            }
            Image("Namaste")
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
            
            /*Button("location") {
                sheetManager.present()
                
            }*/
        }
        .overlay() {
            if sheetManager.action.isPresented {
                PopUpView(landmark: landmarks[7]){
                    sheetManager.dismiss()
                }
            }
            
        }
        
    }
}

#Preview {
    CircleImage()
        .environmentObject(SheetManager())
}
