//
//  WeatherVC.swift
//  WeatherInBensheim
//
//  Created by Vladimir Valter on 12/05/2018.
//  Copyright © 2018 Vladimir Valter. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

    var currentWeather: CurrentWeather!
    var forecast: Forecast?
//    var forecasts = [Forecast]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        WeatherService.instance.getCurrentWeather { (success) in
            self.currentWeather = WeatherService.instance.currentWeather
            self.updateMainUI()
        }

        WeatherService.instance.getForecast { (success) in
            self.forecast = WeatherService.instance.forcast
            self.tableView.reloadData()
        }
    }



    func updateMainUI() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        dateLabel.text = "Today is, \(currentDate)"
        let celsiusTemp = currentWeather.main.temp - 273.15
        currentTempLabel.text = String(format: "%.0f", celsiusTemp) + "℃"
        currentWeatherLabel.text = currentWeather.weather[0].main
        locationLabel.text = currentWeather.name
        currentWeatherImage.image = UIImage(named: currentWeather.weather[0].main)
    }

}

extension WeatherVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecast?.list.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? WeatherCell {

            guard let list = forecast?.list[indexPath.row] else {return WeatherCell()}
            cell.configureCell(list: list)
            return cell
        } else {
            return WeatherCell()
        }
    }
}
