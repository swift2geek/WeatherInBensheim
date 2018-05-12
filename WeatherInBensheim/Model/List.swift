//
//  Weather.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct List: Decodable {
    var dt: Double
    var temp: Temp
    var pressure: Double
    var humidity: Double
    var weather: [Weather]
    var speed: Double
    var deg: Int
    var clouds: Int
}
