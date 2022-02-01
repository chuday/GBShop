//
//  CartRequest.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 29.01.2022.
//

import Foundation

struct CartRequest: Codable {
    var productId: Int?
    var quantity: Int?
}
