//
//  CruzHacksApp.swift
//  CruzHacks
//
//  Created by Neha Ashwin on 1/19/24.
//

import SwiftUI

@main
struct CruzHacksApp: App {
    
    @StateObject var sheetManager = SheetManager()
    
    var body: some Scene {
        WindowGroup {
            CircleImage()
                .environmentObject(sheetManager)
        }
    }
}
