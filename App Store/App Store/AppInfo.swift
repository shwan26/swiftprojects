import Foundation

struct AppInfo: Codable {
    let appName: String
    let appIcon: String 
    let shortDescription: String
    let rating: Double
    let age: String
    let topChartPosition: Int
    let detailedDescription: String
    let screenshotGallery: [String]
}
