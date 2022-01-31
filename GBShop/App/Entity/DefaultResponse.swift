//
//  DefaultResponse.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 28.01.2022.
//

import Foundation

struct DefaultResponse: Codable {
    var result: Int
    var successMessage: String?
    var errorMessage: String?
}
