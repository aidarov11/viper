//
//  WelcomePresenter.swift
//  VIPER
//
//  Created by Aidarov Alibek on 10.09.2024.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject {
    func viewDidLoad()
    
    func didLoad(date: String?)
    func didLoad(weather: String?)
}

class WelcomePresenter {
    /// Тут weak потому что viewController может быть удален с иеархий viewControllers поэтому нам будет не кому обращаться
    weak var view: WelcomeViewProtocol?
    var interactor: WelcomeInteractorProtocol
    var router: WelcomeRouterProtocol
    
    
    init(
        interactor: WelcomeInteractorProtocol,
        router: WelcomeRouterProtocol
    ) {
        self.interactor = interactor
        self.router = router
    }
    
}

extension WelcomePresenter: WelcomePresenterProtocol {
    func viewDidLoad() {
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date")
    }
    
    func didLoad(weather: String?) {
        view?.showWeather(weather: weather ?? "No temprature")
    }
}
