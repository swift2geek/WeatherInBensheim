//
//  Weather.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct Temp: Decodable {

    var day: Double
    var min: Double
    var max: Double
    var night: Double
    var eve: Double
    var morn: Double
}
