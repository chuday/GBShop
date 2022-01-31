//
//  User.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 17.01.2022.
//

import Foundation

struct User: Codable {
    let id: Int?
    let login: String?
    let password: String?
    let name: String?
    let lastname: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case login = "user_login"
        case password
        case name = "user_name"
        case lastname = "user_lastname"
    }
    
    init (id: Int? = nil,
          login: String? = nil,
          password: String? = nil,
          name: String? = nil,
          lastname: String? = nil
    ) {
        self.id = id
        self.login = login
        self.password = password
        self.name = name
        self.lastname = lastname
    }
}
