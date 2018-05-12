//
//  WeatherService.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import Foundation
import Alamofire

class WeatherService {
    static let instance = WeatherService()
    var forcast: Forecast!
    var currentWeather: CurrentWeather!

    func getForecast(completion: @escaping CompletionHandler) {

        Alamofire.request(FORECAST_URL).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }

                do {
                    self.forcast = try JSONDecoder().decode(Forecast.self, from: data)
                    completion(true)
                } catch let error {
                    debugPrint(error as Any)
                }
                print(self.forcast)
            }
            completion(false)
        }
    }

    func getCurrentWeather(completion: @escaping CompletionHandler) {

        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }

                do {
                    self.currentWeather = try JSONDecoder().decode(CurrentWeather.self, from: data)
                    completion(true)
                } catch let error {
                    debugPrint(error as Any)
                }
                print(self.currentWeather)
            }
            completion(false)
        }
    }

}
