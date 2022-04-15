import Foundation

public struct MovieModel {

    public let id = UUID()
    public let title: String
    public let group: [MovieGroup]
    public let genre: Genre
    public let imageUrl: String
    public let description: String
    public let score: Int // up to 100
    public let year: Int
    public let length: Int // in minutes
    public let cast: [Cast]
    public let favorite: Bool

}
