//
//  HotelList.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

struct HotelList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var selectedStar = 0
    @State private var selectedReview = 0.0
    
    var filteredHotels: [Hotel] {
        filterData()
    }
     
    var body: some View {
        NavigationStack{
            ScrollView{
                FilterSearchView(selectedStarRating: $selectedStar, selectedReviewScores: $selectedReview)
                
                VStack{
                    Section{
                        Toggle(isOn: $showFavoritesOnly) {
                            Text("Favorite hotels")
                        }
                        .padding()
                    }
                    .background(Color.white)
                    .padding(.top,-10)
                    
                    
                    ForEach(filteredHotels){ hotel in
                        Section{
                            NavigationLink{
                                HotelDetail(hotel: hotel)
                            }
                            label: {
                                HotelRow(hotel: hotel)
                            }
                            .background(Color.white)
                        }
                    }
                }
                .padding(.top)
                .background(Color(UIColor.systemGray6))
            }
            .navigationTitle("Hotels")
            .navigationBarTitleDisplayMode(.inline)
        }
   
    }
    
    
    func filterData() -> [Hotel] {
        if (showFavoritesOnly){
            return modelData.hotels.filter { hotel in
                hotel.isFavorite
            }
        } else if (selectedStar > 0 && selectedReview > 0.0) {
            return modelData.hotels.filter { hotel in
                (hotel.starRating == selectedStar && hotel.reviewScore >= selectedReview)
            }
        } else if (selectedStar == 0 && selectedReview > 0.0) {
            return modelData.hotels.filter { hotel in
                (hotel.reviewScore >= selectedReview)
            }
        } else if (selectedStar > 0 && selectedReview == 0) {
            return modelData.hotels.filter { hotel in
                (hotel.starRating == selectedStar)
            }
        }
        return modelData.hotels
    }
    
}
   

struct HotelList_Previews: PreviewProvider {
    static var previews: some View {
        HotelList()
            .environmentObject(ModelData())
    }
}
