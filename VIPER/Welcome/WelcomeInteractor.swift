//
//  WelcomeInteractor.swift
//  VIPER
//
//  Created by Aidarov Alibek on 10.09.2024.
//

import Foundation

protocol WelcomeInteractorProtocol: AnyObject {
    func loadDate()
    func loadWeather()
}

class WelcomeInteractor: WelcomeInteractorProtocol {
    
    weak var presenter: WelcomePresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    
    func loadDate() {
        dateService.getDate { [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather { [weak self] weather in
            self?.presenter?.didLoad(weather: weather.description)
        }
    }
}
