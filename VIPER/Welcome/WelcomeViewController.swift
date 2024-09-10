//
//  WelcomeViewController.swift
//  VIPER
//
//  Created by Aidarov Alibek on 10.09.2024.
//

import UIKit

protocol WelcomeViewProtocol: AnyObject {
    func showDate(date: String)
    func showWeather(weather: String)
}

class WelcomeViewController: UIViewController {
    
    var presenter: WelcomePresenterProtocol?
    
    let dateLabel = UILabel()
    let weatherLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        setupUI()
    }

    // MARK: - Private methods
    
    func setupUI() {
        view.backgroundColor = .white
        
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(dateLabel)
        view.addSubview(weatherLabel)
        
        let dateLabelConstraints = [
            dateLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            dateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ]
        
        let weatherLabelConstraints = [
            weatherLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 16),
            weatherLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(dateLabelConstraints)
        NSLayoutConstraint.activate(weatherLabelConstraints)
    }
}

extension WelcomeViewController: WelcomeViewProtocol {
    func showDate(date: String) {
        DispatchQueue.main.async { [weak self] in
            self?.dateLabel.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async { [weak self] in
            self?.weatherLabel.text = weather
        }
    }
}

