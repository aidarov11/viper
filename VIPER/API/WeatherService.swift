//
//  WeatherService.swift
//  VIPER
//
//  Created by Aidarov Alibek on 10.09.2024.
//

import Foundation

class WeatherService {
    func getWeather(completion: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}
