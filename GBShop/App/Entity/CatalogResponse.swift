//
//  CatalogResponse.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 28.01.2022.
//

import Foundation

struct CatalogResponse: Codable {
    let productId: Int?
    let productName: String?
    let price: Int?
}
