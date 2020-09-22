//
//  WeatherManagerDelegate.swift
//  Clima
//
//  Created by Boyang Zhang on 9/22/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, _ weather: WeatherModel)
    
    func didFailWithError(error: Error)
}
