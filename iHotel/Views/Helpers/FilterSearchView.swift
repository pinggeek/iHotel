//
//  FilterSearchView.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

struct FilterSearchView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selectedPickerStar = ""
    @State private var selectedPickerReview = ""
    
    let stars = ["2", "3", "4", "5"]
    let reviews = ["6.0", "7.0", "8.0", "9.0"]
    
    @Binding var selectedStarRating: Int
    @Binding var selectedReviewScores: Double
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Star rating:")
                        .padding(.top, 10)
                    
                    Picker("Please choose a color", selection: $selectedPickerStar) {
                        Text("All Stars").tag("")
                        ForEach(stars, id: \.self) {
                            Text("\($0) Stars").tag(Optional($0))
                        }
                    }
                        .overlay(RoundedRectangle(cornerRadius: 5.0)
                            .stroke(lineWidth: 1.0)
                        )
                        .foregroundColor(Color.black.opacity(0.5))
                        .padding(.bottom, 10)
                        
                }
                
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .padding(.leading, 10)

                
                VStack {
                    Text("Review scores:")
                        .padding(.top, 10)
                    
                    Picker("Please choose a color", selection: $selectedPickerReview) {
                        Text("All Scores").tag("")
                        ForEach(reviews, id: \.self) {
                            Text("Above \($0)")
                        }
                    }
                        .overlay(
                            RoundedRectangle(cornerRadius: 5.0)
                                .stroke(lineWidth: 1.0)
                    )
                        .foregroundColor(Color.black.opacity(0.5))
                        .padding(.bottom, 10)
                }
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .padding(.trailing, 10)
            }
            .padding(.top, 10)
                
            
            Button {
                selectedStarRating = Int(selectedPickerStar) ?? 0
                selectedReviewScores = Double(selectedPickerReview) ?? 0
                
            } label: {
                Text("Search")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .bold()
            }
            .buttonStyle(.borderedProminent)
            .padding(8)
            .padding(.top, -8)
        }
        .background(.yellow)

    }
}



struct FilterSearchView_Previews: PreviewProvider {
    static var previews: some View {
        FilterSearchView(selectedStarRating: .constant(2), selectedReviewScores: .constant(6.0))
    }
}
