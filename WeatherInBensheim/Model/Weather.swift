//
//  Weather.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

struct Weather: Decodable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}
