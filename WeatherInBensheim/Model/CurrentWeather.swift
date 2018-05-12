//
//  CurrentWeather.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct CurrentWeather: Decodable {
    var coord: [String: Double]
    var weather: [Weather]
    var base: String
    var main: Main
    var visibility: Int
    var wind: [String: Double]
    var clouds: [String: Double]
    var dt: Double
    var sys: Sys
    var id: Double
    var name: String
    var cod: Int

}
