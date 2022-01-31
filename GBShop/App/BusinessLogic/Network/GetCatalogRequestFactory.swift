//
//  GetCatalogRequestFactory.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 18.01.2022.
//

import Foundation
import Alamofire

protocol GetCatalogRequestFactory {
    func getCatalog(pageNumber: Int, categoryId: Int, completionHandler: @escaping (AFDataResponse<[CatalogResponse]>) -> Void)
}
