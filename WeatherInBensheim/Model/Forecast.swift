//
//  Forecast.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct Forecast: Decodable {
    var city: City
    var cod: String
    var message: Double
    var cnt: Int
    var list: [List]
}
