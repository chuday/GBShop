//
//  CartResponse.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 29.01.2022.
//

import Foundation

struct CartResponse: Codable {
    var amount: Int?
    var count: Int?
    var contents: [CartContents]
}

struct CartContents: Codable {
    var productId: Int?
    var productName: String?
    var productPrice: Int?
    var quantity: Int?
}
