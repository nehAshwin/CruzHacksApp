//
//  LandmarkList.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/20/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Lounges")
        } detail: {
            Text("Select a Lounge")
        }
        
    }
}

#Preview {
    LandmarkList()
}
