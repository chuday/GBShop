//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 17.01.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(user: User, completionHandler: @escaping (AFDataResponse<DefaultResponse>) -> Void)
    func logout(user: User, completionHandler: @escaping (AFDataResponse<DefaultResponse>) -> Void)
}
