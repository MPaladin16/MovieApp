import XCTest
@testable import MovieAppData

class MovieDataTests: XCTestCase {

    func testMoviesCount() throws {
        let movies = Movies.all()

        XCTAssert(movies.count == 18)
    }

    func testMoviesGroupCount() {
        var groupSet = Set<MovieGroup>()
        let movies = Movies.all()

        movies
            .map { $0.group }
            .flatMap { $0 }
            .forEach {
                groupSet.insert($0)
            }

        XCTAssert(groupSet.count == 5)
    }

    func testMoviesContainsTheBatman() {
        let movies = Movies.all()

        let hasBatman = movies
            .map { $0.title }
            .contains("The Batman")

        XCTAssertTrue(hasBatman)
    }

    func testMoviesDoesNotContainSpiderman() {
        let movies = Movies.all()

        let hasSpiderman = movies
            .map { $0.title }
            .contains("Spiderman")

        XCTAssertFalse(hasSpiderman)
    }

    func testMoviesInGroupCount() {
        let movies = Movies.all()
        let upcomingCount = movies.filter { $0.group.contains(MovieGroup.upcoming) }.count
        let trendingCount = movies.filter { $0.group.contains(MovieGroup.trending) }.count
        let topRatedCount = movies.filter { $0.group.contains(MovieGroup.topRated) }.count
        let popularCount = movies.filter { $0.group.contains(MovieGroup.popular) }.count
        let freeToWatchCount = movies.filter { $0.group.contains(MovieGroup.freeToWatch) }.count

        XCTAssert(upcomingCount == 3)
        XCTAssert(trendingCount == 9)
        XCTAssert(topRatedCount == 10)
        XCTAssert(popularCount == 10)
        XCTAssert(freeToWatchCount == 8)
    }

    

}
