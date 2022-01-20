//
//  ShopViewController.swift
//  GBShop
//
//  Created by Mikhail Chudaev on 17.01.2022.
//

import UIKit

class ShopViewController: UIViewController {
        
        let requestFactory = RequestFactory()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            makeAuthRequest()
            makeSignupRequest()
            makeChangeUserDataRequest()
            makeLogoutRequest()
            makeGetCatalogRequest()
            makeGetGoodRequest()
        }
                
        func makeAuthRequest() {
            let factory = requestFactory.makeAuthRequestFactory()
            let user = User(login: "Somebody", password: "mypassword")
            
            factory.login(user: user) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
        func makeSignupRequest() {
            let factory = requestFactory.makeSignupRequestFactory()
            let user = User(login: "SomebodyElse",
                            password: "mypassword",
                            name: "John",
                            lastname: "Doe")
            
            factory.signup(user: user) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
        func makeChangeUserDataRequest() {
            let factory = requestFactory.makeChangeUserDataRequestFactory()
            let user = User(id: 123,
                            login: "SomebodyElse",
                            password: "mypassword",
                            name: "John",
                            lastname: "Doe")
            
            factory.changeUserData(user: user) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
        func makeLogoutRequest() {
            let factory = requestFactory.makeAuthRequestFactory()
            let user = User(id: 123)
            
            factory.logout(user: user) { response in
                switch response.result {
                case .success(let result):
                    print(result)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    
    func makeGetCatalogRequest() {
        let factory = requestFactory.makeGetCatalogRequestFactory()
        
        factory.getCatalog(pageNumber: 1, categoryId: 1) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func makeGetGoodRequest() {
        let factory = requestFactory.makeGetGoodRequestFactory()
        
        factory.getGood(productId: 123) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
