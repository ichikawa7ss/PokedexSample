//
//  JsonEncoder+.swift
//  API
//
//  Created by ichikawa on 2020/05/21.
//

import Foundation

extension JSONEncoder {
    
    func encodeToDictionary<T: Encodable>(_ value: T) ->  [String: Any] {
        do {
            let data = try self.encode(value)
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            return (jsonObject as? [String: Any] ?? [:])
        } catch {
            print(error.localizedDescription)
            return[:]
        }
    }
}
