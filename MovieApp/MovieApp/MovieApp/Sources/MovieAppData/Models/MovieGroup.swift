public enum MovieGroup: CaseIterable {

    case popular
    case freeToWatch
    case trending
    case topRated
    case upcoming

    public var filters: [MovieFilter] {
        switch self {
        case .popular:
            return [.streaming, .onTv, .forRent, .inTheaters]
        case .freeToWatch:
            return [.drama, .thriller, .horror, .comedy, .romanticComedy, .sport, .action, .sciFi, .war]
        case .trending:
            return [.day, .week, .month, .allTime]
        case .topRated:
            return [.day, .week, .month, .allTime]
        case .upcoming:
            return [.drama, .thriller, .horror, .comedy, .romanticComedy, .sport, .action, .sciFi, .war]
        }
    }

}
