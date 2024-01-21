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
    static let computerlab = CLLocationCoordinate2D(latitude: 37.0023594594364, longitude: -122.05825353835804)
    static let reclounge = CLLocationCoordinate2D(latitude: 37.00066045976536, longitude: -122.05770624144299)
    static let communityroom = CLLocationCoordinate2D(latitude: 37.00228002852896, longitude: -122.05937188518462)
    static let terryfreitas = CLLocationCoordinate2D(latitude: 37.00031667342151, longitude: -122.05805588472326)
    static let stevensonlibrary = CLLocationCoordinate2D(latitude: 36.99714364327837, longitude: -122.0514145537799)
    static let firesidelounge = CLLocationCoordinate2D(latitude: 36.99689048608395, longitude: -122.05165498091067)
    static let pagesmith = CLLocationCoordinate2D(latitude: 36.99691585811119, longitude: -122.05355828932638)
    static let practiceroom = CLLocationCoordinate2D(latitude: 37.00161616205019, longitude: -122.05387105729577)
    static let crownlibrary = CLLocationCoordinate2D(latitude: 36.999788172985724, longitude: -122.05486577964325)
    static let kresgestudy = CLLocationCoordinate2D(latitude: 36.99801594283223, longitude: -122.06560890324258)
    static let porterlounge = CLLocationCoordinate2D(latitude: 36.99449939308065, longitude: -122.06581881898796)
    static let redroom = CLLocationCoordinate2D(latitude: 36.9912283700422, longitude: -122.0648005264464)
    static let perksPS = CLLocationCoordinate2D(latitude: 36.99946997151475, longitude: -122.06153954171275)
    static let perksBE = CLLocationCoordinate2D(latitude: 37.00046282568908, longitude: -122.06301742214583)
    static let perksEMS = CLLocationCoordinate2D(latitude: 36.99794854830976, longitude: -122.05994436821639)
}

struct MapView: View {
    @State private var selectedTag: Int?
    @EnvironmentObject var sheetManager: SheetManager
    @State private var loungeID: Int = 5
    
    var body: some View {
        Map(initialPosition: .region(region), selection: $selectedTag){
            Annotation("Namaste Lounge", coordinate: .namastelounge){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Namaste Lounge", systemImage: "mappin"){
                        loungeID = 0
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Computer Lab", coordinate: .computerlab){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Computer Lab", systemImage: "mappin"){
                        loungeID = 1
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Rec Lounge", coordinate: .reclounge){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Rec Lounge", systemImage: "mappin"){
                        loungeID = 2
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Community Room", coordinate: .communityroom){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Community Room", systemImage: "mappin"){
                        loungeID = 3
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Terry Freitas", coordinate: .terryfreitas){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Terry Freitas", systemImage: "mappin"){
                        loungeID = 4
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Stevenson Library", coordinate: .stevensonlibrary){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Stevenson Library", systemImage: "mappin"){
                        loungeID = 5
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Fireside Lounge", coordinate: .firesidelounge){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Fireside Lounge", systemImage: "mappin"){
                        loungeID = 6
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Page Smith Library", coordinate: .pagesmith){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Page Smith Library", systemImage: "mappin"){
                        loungeID = 7
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Practice Room", coordinate: .practiceroom){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Practice Room", systemImage: "mappin"){
                        loungeID = 8
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Crown Library", coordinate: .crownlibrary){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Crown Library", systemImage: "mappin"){
                        loungeID = 9
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Crown Library", coordinate: .crownlibrary){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Crown Library", systemImage: "mappin"){
                        loungeID = 10
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Kresge Study Center", coordinate: .kresgestudy){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Kresge Study Center", systemImage: "mappin"){
                        loungeID = 10
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Porter Hitchcock Lounge", coordinate: .porterlounge){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Porter Hitchcock Lounge", systemImage: "mappin"){
                        loungeID = 11
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Red Room", coordinate: .redroom){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Red Room", systemImage: "mappin"){
                        loungeID = 12
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Perks Coffee PS", coordinate: .perksPS){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Perks Coffee PS", systemImage: "mappin"){
                        loungeID = 13
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Perks Coffee BE", coordinate: .perksBE){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Perks Coffee BE", systemImage: "mappin"){
                        loungeID = 14
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
            Annotation("Perks Coffee EMS", coordinate: .perksEMS){
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.red, lineWidth: 5)
                    Button("Perks Coffee EMS", systemImage: "mappin"){
                        loungeID = 15
                        sheetManager.present()
                    }
                    .padding(5)
                    .labelStyle(.iconOnly)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 7)
                }
            }
        }
        
        .overlay() {
            if sheetManager.action.isPresented {
                PopUpView(landmark: landmarks[loungeID]) {
                    sheetManager.dismiss()
                }
            }
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
