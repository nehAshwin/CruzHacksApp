//
//  PopUpView.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/20/24.
//Add more background lining + shadow
//

import SwiftUI

struct PopUpView: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(spacing: .zero) {
            icon
            title
            
            content
        }
        .frame(maxWidth: .infinity)
        .padding()
        .multilineTextAlignment(.center)
        .background(.white)
        .overlay(alignment: .topTrailing) {
            close
        }
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(landmark: landmarks[0])
            .background(.white)
            .previewLayout(.sizeThatFits)
    }
}

private extension PopUpView {
    
    var close: some View {
        Button {
            // TODO: Handle close
        } label: {
            Image(systemName: "xmark")
                .symbolVariant(.circle.fill)
                .font(
                    .system(size: 35,
                            weight: .bold,
                            design: .rounded)
                )
                .foregroundStyle(.gray.opacity(0.4))
                .padding(8)
        }
    }
    
    var icon: some View {
        
        landmark.image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
    
    var title: some View {
        Text(landmark.name)
            .font(
                .system(size: 30,
                        weight: .bold,
                        design: .rounded)
            )
            .padding()
            .fixedSize()
    }
    
    var content: some View {
        Text(landmark.description)
            .font(.callout)
            .foregroundColor(.black.opacity(0.8))
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
    }
}
