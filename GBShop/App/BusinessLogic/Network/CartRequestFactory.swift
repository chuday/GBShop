//
//  CartRequestFactory.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 29.01.2022.
//

import Foundation
import Alamofire

protocol CartRequestFactory {
    func getCart(user: User, completionHandler: @escaping (AFDataResponse<CartResponse>) -> Void)
    func payCart(user: User, completionHandler: @escaping (AFDataResponse<DefaultResponse>) -> Void)
    func addToCart(cart: CartRequest, completionHandler: @escaping (AFDataResponse<DefaultResponse>) -> Void)
    func deleteFromCart(cart: CartRequest, completionHandler: @escaping (AFDataResponse<DefaultResponse>) -> Void)
}
