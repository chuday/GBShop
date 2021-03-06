//
//  GetGoodRequestFactory.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 18.01.2022.
//

import Foundation
import Alamofire

protocol GetGoodRequestFactory {
    func getGood(productId: Int, completionHandler: @escaping (AFDataResponse<GoodResponse>) -> Void)
}
