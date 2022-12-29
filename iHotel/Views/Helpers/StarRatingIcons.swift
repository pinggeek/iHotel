//
//  StarRatingIcons.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import SwiftUI

struct StarRatingIcons: View {
    var starRating: Int
    var body: some View {
        if (starRating > 0) {
            HStack {
                ForEach(0..<starRating, id: \.self){ index in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .padding(.trailing, -8)
                }
            }
        }
    }
}

struct StarRatingIcons_Previews: PreviewProvider {
    static var previews: some View {
        StarRatingIcons(starRating: 5)
    }
}
