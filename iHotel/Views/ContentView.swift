//
//  ContentView.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       HotelList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
