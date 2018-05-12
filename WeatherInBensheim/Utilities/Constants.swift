//
//  Constants.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=49.681&lon=8.6228&cnt=10&appid=bb546334181011c2ea430006112ff773"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=49.681&lon=8.6228&cnt=10&appid=bb546334181011c2ea430006112ff773"

