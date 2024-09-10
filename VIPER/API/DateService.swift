//
//  DateService.swift
//  VIPER
//
//  Created by Aidarov Alibek on 10.09.2024.
//

import Foundation

class DateService {
    func getDate(completion: @escaping (Date) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(Date())
        }
    }
}
