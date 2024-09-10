//
//  WelcomeModuleBuilder.swift
//  VIPER
//
//  Created by Aidarov Alibek on 10.09.2024.
//

import Foundation
import UIKit

class WelcomeModuleBuilder {
    static func build() -> UIViewController {
        let viewController = WelcomeViewController()
        let interactor = WelcomeInteractor()
        let router = WelcomeRouter()
        let presenter = WelcomePresenter(
            interactor: interactor,
            router: router
        )
        
        
        
        viewController.presenter = presenter
        interactor.presenter = presenter
        presenter.view = viewController
        router.view = viewController
        
        return viewController
    }
}
