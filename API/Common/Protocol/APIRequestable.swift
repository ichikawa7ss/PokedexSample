//
//  APIRequestable.swift
//  API
//
//  Created by ichikawa on 2020/05/21.
//

import Foundation
import Alamofire

protocol APIReqeuestable: Encodable {
    var urlString: String { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any] { get }
}

extension APIReqeuestable {
    
    var parameters: [String: Any] {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder.encodeToDictionary(self)
    }
}
