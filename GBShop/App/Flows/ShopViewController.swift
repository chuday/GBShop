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
            makeGetReviewsRequest()
            makeAddReviewRequest()
            makeRemoveReviewRequest()
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
                        email: "some@some.ru",
                        gender: "m",
                        creditCard: "9872389-2424-234224-234",
                        bio: "This is good! I think I will switch to another language",
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
                        email: "some@some.ru",
                        gender: "m",
                        creditCard: "9872389-2424-234224-234",
                        bio: "This is good! I think I will switch to another language",
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
    
    func makeGetReviewsRequest() {
        let factory = requestFactory.makeReviewsFactory()
        
        factory.getReviews(productId: 123) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func makeAddReviewRequest() {
        let factory = requestFactory.makeReviewsFactory()
        let review = ReviewRequest(reviewText: "Не берите!", userId: 123, productId: 666)
        
        factory.addReview(review: review){ response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func makeRemoveReviewRequest() {
        let factory = requestFactory.makeReviewsFactory()
        
        factory.removeReview(reviewId: 123){ response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
