public struct Movies {

    public static func all() -> [MovieModel] {
        [
            MovieModel(
                title: "The Shawshank Redemption",
                group: [.topRated, .trending, .popular],
                genre: .drama,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
                score: 93,
                year: 1994,
                length: 142,
                cast: [
                    Cast(name: "Frank Darabont", type: .director),
                    Cast(name: "Tim Robbins", type: .actor),
                    Cast(name: "Morgan Freeman", type: .actor),
                    Cast(name: "Bob Gunton", type: .actor),
                    Cast(name: "William Sadler", type: .actor)
                ],
                favorite: true
            ),
            MovieModel(
                title: "The Godfather",
                group: [.topRated, .popular],
                genre: .drama,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR1,0,67,98_AL_.jpg",
                description: "The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.",
                score: 92,
                year: 1972,
                length: 175,
                cast: [
                    Cast(name: "Francis Ford Coppola", type: .director),
                    Cast(name: "Marlon Brando", type: .actor),
                    Cast(name: "Al Pacino", type: .actor),
                    Cast(name: "James Caan", type: .actor),
                    Cast(name: "Diane Keaton", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "The Dark Knight",
                group: [.freeToWatch],
                genre: .action,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
                score: 91,
                year: 2008,
                length: 152,
                cast: [
                    Cast(name: "Christopher Nolan", type: .director),
                    Cast(name: "Christian Bale", type: .actor),
                    Cast(name: "Heath Ledger", type: .actor),
                    Cast(name: "Aaron Eckhart", type: .actor),
                    Cast(name: "Michael Caine", type: .actor)
                ],
                favorite: true
            ),
            MovieModel(
                title: "The Lord of the Rings: The Return of the King",
                group: [.topRated, .freeToWatch],
                genre: .action,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
                score: 90,
                year: 2003,
                length: 201,
                cast: [
                    Cast(name: "Peter Jackson", type: .director),
                    Cast(name: "Elijah Wood", type: .actor),
                    Cast(name: "Viggo Mortensen", type: .actor),
                    Cast(name: "Ian McKellen", type: .actor),
                    Cast(name: "Orlando Bloom", type: .actor)
                ],
                favorite: true
            ),
            MovieModel(
                title: "Schindler's List",
                group: [.topRated],
                genre: .drama,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.",
                score: 90,
                year: 1993,
                length: 195,
                cast: [
                    Cast(name: "Steven Spielberg", type: .director),
                    Cast(name: "Liam Neeson", type: .actor),
                    Cast(name: "Ralph Fiennes", type: .actor),
                    Cast(name: "Ben Kingsley", type: .actor),
                    Cast(name: "Caroline Goodall", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "12 Angry Men",
                group: [.topRated, .freeToWatch, .trending, .popular],
                genre: .drama,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.",
                score: 90,
                year: 1957,
                length: 196,
                cast: [
                    Cast(name: "Sidney Lumet", type: .director),
                    Cast(name: "Henry Fonda", type: .actor),
                    Cast(name: "Lee J. Cobb", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "Pulp Fiction",
                group: [.topRated, .freeToWatch, .trending, .popular],
                genre: .drama,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY98_CR0,0,67,98_AL_.jpg",
                description: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
                score: 89,
                year: 1994,
                length: 154,
                cast: [
                    Cast(name: "Quentin Tarantino", type: .director),
                    Cast(name: "John Travolta", type: .actor),
                    Cast(name: "Uma Thurman", type: .actor),
                    Cast(name: "Samuel L. Jackson", type: .actor),
                    Cast(name: "Bruce Willis", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "Inception",
                group: [.topRated, .popular],
                genre: .sciFi,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.",
                score: 88,
                year: 2010,
                length: 148,
                cast: [
                    Cast(name: "Christopher Nolan", type: .director),
                    Cast(name: "Leonardo DiCaprio", type: .actor)
                ],
                favorite: true
            ),
            MovieModel(
                title: "The Lord of the Rings: The Two Towers",
                group: [.popular],
                genre: .action,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.",
                score: 88,
                year: 2002,
                length: 179,
                cast: [
                    Cast(name: "Peter Jackson", type: .director),
                    Cast(name: "Elijah Wood", type: .actor),
                    Cast(name: "Ian McKellen", type: .actor),
                    Cast(name: "Viggo Mortensen", type: .actor),
                    Cast(name: "Orlando Bloom", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "Fight Club",
                group: [.popular, .trending],
                genre: .drama,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BNDIzNDU0YzEtYzE5Ni00ZjlkLTk5ZjgtNjM3NWE4YzA3Nzk3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.",
                score: 88,
                year: 1999,
                length: 139,
                cast: [
                    Cast(name: "David Fincher", type: .director),
                    Cast(name: "Brad Pitt", type: .actor),
                    Cast(name: "Edward Norton", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "Forrest Gump",
                group: [.trending],
                genre: .drama,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY98_CR0,0,67,98_AL_.jpg",
                description: "The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.",
                score: 88,
                year: 1994,
                length: 142,
                cast: [
                    Cast(name: "Robert Zemeckis", type: .director)
                ],
                favorite: true
            ),
            MovieModel(
                title: "Interstellar",
                group: [.trending, .topRated],
                genre: .sciFi,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
                score: 87,
                year: 2014,
                length: 169,
                cast: [
                    Cast(name: "Robert Zemeckis", type: .director),
                    Cast(name: "Matthew McConaughey", type: .actor),
                    Cast(name: "Anne Hathaway", type: .actor)
                ],
                favorite: true
            ),
            MovieModel(
                title: "The Matrix",
                group: [.trending, .popular, .topRated, .freeToWatch],
                genre: .action,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.",
                score: 88,
                year: 1994,
                length: 142,
                cast: [
                    Cast(name: "Lana Wachowski", type: .director),
                    Cast(name: "Lilly Wachowski", type: .director),
                    Cast(name: "Keanu Reeves", type: .actor),
                    Cast(name: "Laurence Fishburne", type: .actor),
                    Cast(name: "Carrie-Anne Moss", type: .actor),
                    Cast(name: "Hugo Weaving", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "Star Wars: Episode V - The Empire Strikes Back",
                group: [.freeToWatch],
                genre: .action,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX67_CR0,0,67,98_AL_.jpg",
                description: "After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.",
                score: 87,
                year: 1980,
                length: 124,
                cast: [
                    Cast(name: "Irvin Kershner", type: .director),
                    Cast(name: "Mark Hamill", type: .actor),
                    Cast(name: "Harrison Ford", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "Seven Samurai",
                group: [.freeToWatch],
                genre: .action,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BOWE4ZDdhNmMtNzE5ZC00NzExLTlhNGMtY2ZhYjYzODEzODA1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY98_CR1,0,67,98_AL_.jpg",
                description: "A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.",
                score: 87,
                year: 1954,
                length: 207,
                cast: [
                    Cast(name: "Akira Kurosawa", type: .director),
                    Cast(name: "Toshirô Mifune", type: .actor),
                    Cast(name: "Takashi Shimura", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "The 355",
                group: [.trending, .upcoming],
                genre: .thriller,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BNzk4MDZhNTctMDA3OC00ODdkLWIyOWYtN2M0MzA3MDY5NDk1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX140_CR0,0,140,209_AL_.jpg",
                description: "When a top-secret weapon falls into mercenary hands, a wild card CIA agent joins forces with three international agents on a lethal mission to retrieve it, while staying a step ahead of a mysterious woman who's tracking their every move.",
                score: 53,
                year: 2022,
                length: 122,
                cast: [
                    Cast(name: "Simon Kinberg", type: .director),
                    Cast(name: "Jessica Chastain", type: .actor),
                    Cast(name: "Penélope Cruz", type: .actor)
                ],
                favorite: true
            ),
            MovieModel(
                title: "Death on the Nile",
                group: [.upcoming, .popular],
                genre: .thriller,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BYjFmOWUwYjgtM2UyYS00M2FmLTgwNmUtMWIwNTc2ZTgzNmRhXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY209_CR0,0,140,209_AL_.jpg",
                description: "While on vacation on the Nile, Hercule Poirot must investigate the murder of a young heiress.",
                score: 65,
                year: 2022,
                length: 127,
                cast: [
                    Cast(name: "Kenneth Branagh", type: .director),
                    Cast(name: "Tom Bateman", type: .actor),
                    Cast(name: "Annette Bening", type: .actor)
                ],
                favorite: false
            ),
            MovieModel(
                title: "The Batman",
                group: [.trending, .upcoming, .popular, .topRated, .freeToWatch],
                genre: .action,
                imageUrl: "https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_UY209_CR0,0,140,209_AL_.jpg",
                description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
                score: 83,
                year: 2022,
                length: 176,
                cast: [
                    Cast(name: "Matt Reeves", type: .director),
                    Cast(name: "Robert Pattinson", type: .actor),
                    Cast(name: "Zoë Kravitz", type: .actor)
                ],
                favorite: true
            ),
        ]
    }

}
