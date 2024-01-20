//
//  MapView.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/19/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        //ZStack {
            Map(initialPosition: .region(region))
            
            //Button("show Namaste Lounge")
        //}
        
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 36.987262, longitude: -122.059),
            span: MKCoordinateSpan(latitudeDelta: 0.022, longitudeDelta: 0.022)
        )
    }
}

#Preview {
    MapView()
}
