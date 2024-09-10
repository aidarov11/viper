//
//  WelcomeRouter.swift
//  VIPER
//
//  Created by Aidarov Alibek on 10.09.2024.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject {
    
}

class WelcomeRouter: WelcomeRouterProtocol {
    weak var view: WelcomeViewProtocol?
}
