//
//  WeatherData.swift
//  Clima
//
//  Created by Buse Topuz on 14.07.2022.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
