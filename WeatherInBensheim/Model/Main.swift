//
//  Weather.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct Main: Decodable {
    var temp: Double
    var pressure: Int
    var humidity: Int
    var temp_min: Double
    var temp_max: Double
}
