//
//  API.swift
//  API
//
//  Created by ichikawa on 2020/05/21.
//

import Foundation
import Alamofire

enum API {
    
    typealias Success = (Data) -> Void
    typealias Failuer = (Error) -> Void
    
    static func request(urlString: String,
                        method: HTTPMethod,
                        paramters: [String: Any],
                        success: @escaping Success,
                        failure: @escaping Failuer) {
        
        Session.default
            .request(urlString, method: method, parameters: paramters)
            .responseData { response in
                switch response.result {
                case .success(let data):
                    success(data)
                case .failure(let error):
                    failure(error)
                }
                
        }
    }
}
