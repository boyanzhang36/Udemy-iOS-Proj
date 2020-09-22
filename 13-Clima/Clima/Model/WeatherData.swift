//
//  WeatherData.swift
//  Clima
//
//  Created by Boyang Zhang on 9/22/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main  // name must be the same as the one in JSON
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int  // 相对应的icon id
}
