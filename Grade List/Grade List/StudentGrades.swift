//
//  Grades.swift
//  Grade List
//
//  Created by Giyu Tomioka on 8/18/24.
//

import Foundation

struct StudentGrades: Codable {
    var name: String
    var grades: [Gradelist]
}

struct Gradelist: Codable {
    var code: String
    var credit: Double
    var name: String
    var grade: String
}
