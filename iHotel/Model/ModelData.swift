//
//  ModelData.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
    @Published var hotels: [Hotel] = [
        Hotel(
            id:001,
              name: "Shangri-La Sydney",
              starRating: 5,
              reviewScore: 8.1,
              reviewNumber: 8831,
              addressStreet: "176 Cumberland Street, The Rocks",
              addressSuburb: "Sydney CBD",
              isFavorited: true,
              description: "Wake up to breathtaking views of the iconic Sydney Opera House, the Harbour Bridge or Darling Harbour each morning. You will be spoiled for choice at the Shangri-La Hotel, with a day spa, fitness centre and indoor pool at your disposal.The Shangri-la Sydney is located in the historic Rocks area, where Europeans first settled in Australia in 1788. This enviable location is just 5 minutes’ walk from both the Sydney Opera House and the MCA (Museum of Contemporary Art).",
              imageName: "shangrila",
              coordinates: Hotel.Coordinates(latitude:-33.861123489351606, longitude:151.20643256884875)
             ),
              
        
        
        Hotel(
            id:002,
              name: "Hyatt Regency Sydney",
              starRating: 5,
              reviewScore: 8.2,
              reviewNumber: 6121,
              addressStreet: "161 Sussex Street",
              addressSuburb: "Sydney CBD",
              isFavorited: true,
              description: "Located adjacent to Darling Harbour in Sydney's Central Business District (CBD), the newly renovated hotel is a haven of relaxation for the business or leisure traveler.Guests can enjoy and unwind in the hotel’s bars and restaurants including, Zephyr sky bar which boasts breathtaking panoramic views of Darling Harbour, a high tea in Lobby Lounge, buffet breakfast at Sailmaker , the immersive cocktail bar Jackalberry, and Dundee Arms, one of Sydney’s oldest surviving pubs for a quick beer. Those looking to gather for business can use the state-of-the-art meeting and event facilities",
              imageName: "hyattregency",
              coordinates: Hotel.Coordinates(latitude:-33.86974692792929, longitude:151.20339059768474)
             ),

        
        Hotel(
              id:003,
              name: "Mantra Parramatta",
              starRating: 4,
              reviewScore: 7.2,
              reviewNumber: 1422,
              addressStreet: "Crn Parkes St And Valentine Ave",
              addressSuburb: "Parramatta",
              isFavorited: false,
              description: "Located in the centre of Parramatta's business district, Mantra Parramatta offers a pool, restaurant and fitness centre within a 10-minute drive from both Homebush Bay's Qudos Bank Arena (Allphones Arena) and Pirtek Parramatta Staduim.Mantra Hotel Parramatta provides a variety of modern, spacious studios and 1 and 2 bedroom apartments. Some include a spa bath or a balcony with city views. Guests can enjoy a drink at the bar or relax with a sauna or spa.",
              imageName: "mantraparramatta",
              coordinates: Hotel.Coordinates(latitude:-33.81912245760713, longitude:151.00638569758556)
        ),
        
        Hotel(
              id:004,
              name: "Hilton Sydney",
              starRating: 5,
              reviewScore: 8.1,
              reviewNumber: 2691,
              addressStreet: "488 George Street",
              addressSuburb: "Sydney CBD",
              isFavorited: true,
              description: "Hilton Hotel Sydney is located in Sydney CBD (Central Business District) and features the city's largest hotel health club and fine dining at its famous brasserie. Town Hall train station, providing access to all of Sydney’s attractions, is a 3-minute walk away.The spacious rooms at Sydney Hilton offer modern amenities including luxury bathroom and LCD TV. Some rooms have black-out blinds and a work area.",
              imageName: "hilton",
              coordinates: Hotel.Coordinates(latitude:-33.87161273627598, longitude:151.20790982505696)
        ),
        
        Hotel(
              id:005,
              name: "The Grace Hotel",
              starRating: 4,
              reviewScore: 8.5,
              reviewNumber: 9177,
              addressStreet: "77 York Street",
              addressSuburb: "Sydney CBD",
              isFavorited: false,
              description: "You're eligible for a Genius discount at The Grace Hotel! To save at this property, all you have to do is sign in. Close to the Sydney Harbour Bridge and Sydney Opera House, The Grace Hotel offers luxury rooms and a rooftop fitness centre with an indoor swimming pool and a sauna.",
              imageName: "gracehotel",
              coordinates: Hotel.Coordinates(latitude:-33.868723147478825, longitude: 151.20589729807085)
        ),
        
        Hotel(
             id:006,
              name: "ibis budget Sydney Airport",
              starRating: 3,
              reviewScore: 6.6,
              reviewNumber: 6804,
              addressStreet: "5 Ross Smith Avenue",
              addressSuburb: "Mascot",
              isFavorited: false,
              description: "Ibis budget Sydney Airport is located just 10 minutes’ walk from the domestic terminal and railway station, and a 10-minute drive from the international terminal. All air-conditioned rooms have a private bathroom. Reception is open 24-hours a day. Each room at ibis budget Sydney Airport features a work desk with WiFi access and a TV. There are several rooms designed especially for families. Breakfast options are available. There are also shared facilities available for guest use including an ice machine, coin-operated laundry facilities, iron, ironing board, microwave and vending machine.",
              imageName: "ibisbudget",
             coordinates: Hotel.Coordinates(latitude:-33.93198166144756, longitude:151.18729002714153)
        )
    ]
 
}
