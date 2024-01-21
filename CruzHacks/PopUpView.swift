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
    let didClose: () -> Void
    
    var body: some View {
        VStack(spacing: .zero) {
            icon
            title
            content
        }
        .frame(width: 310, height: 400)
        .padding(.horizontal, 24)
        .padding(.vertical, 40)
        .multilineTextAlignment(.center)
        .background(background)
        .overlay(alignment: .topTrailing) {
            close
        }
        
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(landmark: landmarks[0]) {}
            .padding()
            .shadow(radius: 7)
            .background(.blue)
            .previewLayout(.sizeThatFits)
            
    }
}

private extension PopUpView {
    var background: some View {
        RoundedCorners(color: .white, tl: 10, tr: 10, bl: 0, br: 0)
            .shadow(color: .black.opacity(0.2), radius: 3)
    }
}

private extension PopUpView {
    
    var close: some View {
        Button {
            didClose()
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
            .frame(width: 200, height: 200)
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
        HStack {
            Text(landmark.description)
                .font(.callout)
                .foregroundColor(.black.opacity(0.8))
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            //Spacer()
        }
        
    }
}

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}
