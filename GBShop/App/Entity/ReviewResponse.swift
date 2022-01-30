//
//  ReviewResponse.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 28.01.2022.
//

import Foundation

struct ReviewResponse: Codable {
    let userId: Int?
    let reviewText: String?
}
