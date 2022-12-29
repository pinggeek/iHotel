//
//  HotelDetail.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

struct HotelDetail: View {
    @EnvironmentObject var modelData: ModelData
    var hotel: Hotel
    var hotelIndex: Int {
           modelData.hotels.firstIndex(where: { $0.id == hotel.id })!
       }
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                HStack{
                    Text(hotel.name)
                        .font(.title)
                        .bold()
                        .ignoresSafeArea(edges: .top)
                    Spacer()
                    FavoriteButton(isSet: $modelData.hotels[hotelIndex].isFavorite)
                }
                
                StarRatingIcons(starRating: hotel.starRating)
                
                Text("\(hotel.addressStreet), \(hotel.addressSuburb)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 5)
                    .padding(.bottom, -1)
                
                
                
                HStack {
                    Image(systemName: "location")
                        .foregroundColor(.blue)
                    
                    //Map button
                    Button(action: {}) {
                        NavigationLink {
                            MapView(coordinate: hotel.locationCoordinate)
                                //.ignoresSafeArea()
                      } label: {
                          Text("Show on map")
                              .font(.subheadline)
                      }
                    }
                }
                .padding(.bottom,1)
                
           
                ReviewBadge(reviewScore: hotel.reviewScore, reviewNumber: hotel.reviewNumber)
                
               
                
                hotel.image
                    .resizable()
                    .frame(height: 250)
                    .padding(.bottom, 20)
                    .padding(.leading,-10)
                
                Divider()
                    .frame(height: 10)
                    .overlay(Color(UIColor.systemGray6))
                
                Text("Property Description")
                    .padding(.top)
                    .font(.title2)
                    .bold()
                
                Text(hotel.description)
                    .font(.subheadline)
                    .padding(.top, 5)
            }
        }
        .navigationTitle(hotel.name)
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
}

struct HotelDetail_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetail(hotel: ModelData().hotels[1])
            .environmentObject(ModelData())
    }
}
