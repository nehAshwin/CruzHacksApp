//
//  MapView.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/19/24.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let namastelounge = CLLocationCoordinate2D(latitude: 36.987262, longitude: -122.059)
}

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region)){
            Marker("Namaste Lounge", coordinate: .namastelounge)
        }
        
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
