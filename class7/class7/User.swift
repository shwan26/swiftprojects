//
//  User.swift
//  class7
//
//  Created by syan k on 2024/7/26.
//

import Foundation

struct User: Codable {
    var name: String
    var age: String
    var hobbys: [String]
    var address: Address
}

struct Address: Codable {
    var number: String
    var street: String
    var postCode: Int
}
