//
//  MapView.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/19/24.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let namastelounge = CLLocationCoordinate2D(latitude: 37.0007460895382, longitude: -122.05722255520206)
    static let reclounge = CLLocationCoordinate2D(latitude: 37.00066045976536, longitude: -122.05770624144299)
}

struct MapView: View {
    @State private var selectedTag: Int?
    
    var body: some View {
        Map(initialPosition: .region(region), selection: $selectedTag){
            Annotation("Namaste Lounge", coordinate: .namastelounge){
                //.tag(0)
            
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 5)
                    Image(systemName: "car")
                        .padding(5)
                }
            }
            Marker("Rec Lounge", coordinate: .reclounge)
                .tag(2)
        }
        
    }
    
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 36.991389144784506, longitude: -122.0585426884201),
            span: MKCoordinateSpan(latitudeDelta: 0.022, longitudeDelta: 0.022)
        )
    }
    
}


#Preview {
    MapView()
}
