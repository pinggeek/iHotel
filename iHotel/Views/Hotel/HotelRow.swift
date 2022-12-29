//
//  HotelRow.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

struct HotelRow: View {
    var hotel: Hotel
    var body: some View {
        HStack{
            hotel.image
                .resizable()
                .frame(width:100, height:100)
            
            VStack(alignment: .leading) {
                Text(hotel.name)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.black)
                
                StarRatingIcons(starRating: hotel.starRating)
               
                ReviewBadge(reviewScore: hotel.reviewScore, reviewNumber: hotel.reviewNumber)
                    .padding(.top,3)
                    .padding(.bottom, 1)
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text(hotel.addressSuburb)
                        .font(.subheadline)
                }
                .foregroundColor(.black)
            }
            
            
            Spacer()
            
            if (hotel.isFavorite) {
                Image(systemName: hotel.isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

struct HotelRow_Previews: PreviewProvider {
    static var previews: some View {
        HotelRow(hotel: ModelData().hotels[0])
            
    }
}
