//
//  WeatherCell.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    @IBOutlet weak var highTemp: UILabel!


    func configureCell(list: List) {
        let celsiusTempMin = list.temp.min - 273.15
        let celsiusTempMax = list.temp.max - 273.15

        lowTemp.text = String(format: "%.0f", celsiusTempMin) + "℃"
        highTemp.text = String(format: "%.0f", celsiusTempMax) + "℃"
        weatherType.text = list.weather[0].main

        let unixConvertedDate = Date(timeIntervalSince1970: list.dt)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.timeStyle = .none
        dayLabel.text = unixConvertedDate.dayOfTheWeek()

        weatherIcon.image = UIImage(named: list.weather[0].main)

    }

}
