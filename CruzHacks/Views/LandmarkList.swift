//
//  LandmarkList.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/20/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
