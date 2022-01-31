//
//  Catalog.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 18.01.2022.
//

import Foundation

struct Catalog: Codable {
    let productId: Int?
    let productName: String?
    let price: Int?
    
    enum CodingKeys: String, CodingKey {
        case productId = "id_product"
        case productName = "product_name"
        case price
    }
}
