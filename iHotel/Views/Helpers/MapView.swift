//
//  MapView.swift
//  iHotel
//
//  Created by Ping on 24/10/2022.
//

import SwiftUI
import MapKit
import CoreLocation



struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    @State private var markers = [Marker]()

    var body: some View {
            Map(coordinateRegion: $region,showsUserLocation: true,
                annotationItems: markers) { marker in
                  marker.location
              }
                .onAppear {
                    setRegion(coordinate)
                    addMarkers(coordinate: coordinate)
                }
                .edgesIgnoringSafeArea(.all)
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
           region = MKCoordinateRegion(
               center: coordinate,
               span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
           )
       }
    
    private func addMarkers(coordinate: CLLocationCoordinate2D) {
            markers = [Marker(location: MapMarker(
                coordinate: coordinate,
                tint: .red))]
    }
    

}



struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude:-33.861123489351606, longitude:151.20643256884875))
    }
}
