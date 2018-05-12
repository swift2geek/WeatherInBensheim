//
//  Weather.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct City: Decodable {
    var id: Int
    var name: String
    var coord: [String: Double]
    var country: String
    var population: Int
}
