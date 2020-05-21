//
//  PokeAPI.swift
//  API
//
//  Created by ichikawa on 2020/05/21.
//

import Foundation

enum PokeAPI<Response: Decodable> {

    typealias Success = (Response) -> Void
    typealias Failure = API.Failuer
    
    static func request(_ request: PokeAPIRequestable,
                                      success: @escaping Success,
                                      failure: @escaping Failure) {
        API.request(urlString: request.urlString,
                    method: request.method,
                    paramters: request.parameters,
                    success: { data in
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        do {
                            let response = try decoder.decode(Response.self, from: data)
                            success(response)
                        } catch {
                            failure(error)
                        }
                    },
                    failure: failure)
    }
}
