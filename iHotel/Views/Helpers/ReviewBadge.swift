//
//  ReviewBadge.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

struct ReviewBadge: View {
    var reviewScore: Double
    var reviewNumber: Int
    
    var body: some View {
        HStack {
            Text(String(reviewScore))
                .foregroundColor(.white)
                .background(Color.blue)
                .padding(.trailing, 15)
            
            Text("\(reviewNumber) reveiws")
                .foregroundColor(.gray)
                .font(.subheadline)
        }
    }
}

struct ReviewBadge_Previews: PreviewProvider {
    static var previews: some View {
        ReviewBadge(reviewScore: 8.1, reviewNumber: 8833)
    }
}
