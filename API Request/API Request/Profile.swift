//
//  Profile.swift
//  API Request
//
//  Created by Giyu Tomioka on 8/10/24.
//

import Foundation

struct Profile: Codable {
    var firstname: String
    var lastname: String
    var age: Int
    var gender: String
    var devices: [Device]
}

struct Device: Codable {
    var type: String
    var model: String
}
