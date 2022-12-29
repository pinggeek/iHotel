//
//  iHotelApp.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

@main
struct iHotelApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
