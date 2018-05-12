//
//  Weather.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct Sys: Decodable {
    var type: Int
    var id: Int
    var message: Double
    var country: String
    var sunrise: Double
    var sunset: Double

}
