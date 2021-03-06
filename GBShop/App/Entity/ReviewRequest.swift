//
//  ReviewRequest.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 28.01.2022.
//

import Foundation

struct ReviewRequest: Codable {
    let reviewText: String?
    let userId: Int?
    let productId: Int?
}
