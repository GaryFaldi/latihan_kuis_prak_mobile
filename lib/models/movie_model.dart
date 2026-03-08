class MovieModel {
  String title;
  int year;
  String genre;
  String director;
  List<String> casts;
  double rating;
  String synopsis;
  String imgUrl;
  String movieUrl;

  MovieModel({
    required this.title,
    required this.year,
    required this.genre,
    required this.director,
    required this.casts,
    required this.rating,
    required this.synopsis,
    required this.imgUrl,
    required this.movieUrl,
  });
}

List<MovieModel> movieList = [
  MovieModel(
    title: "Inception",
    year: 2010,
    genre: "Sci-Fi, Action, Adventure, Thriller",
    director: "Christopher Nolan",
    casts: [
      "Leonardo DiCaprio",
      "Joseph Gordon-Levitt",
      "Elliot Page",
      "Tom Hardy",
      "Ken Watanabe",
      "Cillian Murphy",
      "Marion Cotillard",
    ],
    rating: 8.8,
    synopsis:
        "Dom Cobb is a highly skilled thief who specializes in the dangerous art of corporate espionage by infiltrating the subconscious of his targets through their dreams. Because of his rare ability, he has become a valuable asset in the world of industrial spying but has also become an international fugitive who has lost everything he once loved. Cobb is offered a chance at redemption when he is given a seemingly impossible task known as 'inception'—planting an idea deep within a person's subconscious rather than stealing one. To achieve this, Cobb assembles a team of specialists who must enter multiple layers of dreams within dreams. As the mission progresses, the boundaries between reality and illusion blur, and Cobb must confront memories of his past that threaten to sabotage the operation.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BMTM0MjUzNjkwMl5BMl5BanBnXkFtZTcwNjY0OTk1Mw@@._V1_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/Inception",
  ),
  MovieModel(
    title: "The Shawshank Redemption",
    year: 1994,
    genre: "Drama, Crime",
    director: "Frank Darabont",
    casts: [
      "Tim Robbins",
      "Morgan Freeman",
      "Bob Gunton",
      "William Sadler",
      "Clancy Brown",
    ],
    rating: 9.3,
    synopsis:
        "Andy Dufresne, a quiet and intelligent banker, is wrongly convicted of murdering his wife and her lover and is sentenced to life imprisonment at Shawshank State Penitentiary. Inside the harsh and oppressive prison environment, Andy befriends Ellis 'Red' Redding, a seasoned inmate known for his ability to obtain contraband items. Over the years, Andy uses his financial expertise to assist the prison guards and eventually the corrupt warden with money laundering schemes, earning certain privileges while secretly planning his long-term escape. Through patience, resilience, and unwavering hope, Andy transforms the lives of those around him and ultimately proves that even in the darkest places, hope can be the most powerful force.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/The_Shawshank_Redemption",
  ),
  MovieModel(
    title: "Interstellar",
    year: 2014,
    genre: "Sci-Fi, Adventure, Drama",
    director: "Christopher Nolan",
    casts: [
      "Matthew McConaughey",
      "Anne Hathaway",
      "Jessica Chastain",
      "Michael Caine",
      "Mackenzie Foy",
      "Timothée Chalamet",
    ],
    rating: 8.6,
    synopsis:
        "In a near future where Earth is suffering from massive crop failures, dust storms, and environmental collapse, humanity faces the threat of extinction. Joseph Cooper, a former NASA pilot turned farmer, discovers a secret NASA facility working on a desperate plan to ensure the survival of the human race. Cooper is recruited to lead a mission through a mysterious wormhole near Saturn that could allow travel to distant galaxies in search of a new habitable planet. Along with a team of scientists, he explores several potentially viable worlds while dealing with the effects of relativity, time dilation, and the emotional cost of leaving his children behind on Earth. The journey becomes a powerful exploration of love, sacrifice, and humanity's place in the universe.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/Interstellar_(film)",
  ),
  MovieModel(
    title: "The Dark Knight",
    year: 2008,
    genre: "Action, Crime, Drama, Thriller",
    director: "Christopher Nolan",
    casts: [
      "Christian Bale",
      "Heath Ledger",
      "Aaron Eckhart",
      "Gary Oldman",
      "Michael Caine",
      "Maggie Gyllenhaal",
    ],
    rating: 9.0,
    synopsis:
        "Batman, Lieutenant Jim Gordon, and District Attorney Harvey Dent form an alliance to dismantle the powerful criminal organizations that plague Gotham City. Their efforts begin to show results until a mysterious and sadistic criminal mastermind known as the Joker emerges. The Joker thrives on chaos and manipulation, orchestrating a series of increasingly deadly schemes designed to push Gotham into anarchy. As the stakes escalate, Batman is forced to confront difficult moral choices about justice, sacrifice, and the limits of heroism. Meanwhile, Harvey Dent's transformation into the villain Two-Face becomes a tragic symbol of how even the most righteous individuals can fall under pressure.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/The_Dark_Knight",
  ),
  MovieModel(
    title: "Forrest Gump",
    year: 1994,
    genre: "Drama, Romance",
    director: "Robert Zemeckis",
    casts: ["Tom Hanks", "Robin Wright", "Gary Sinise", "Sally Field"],
    rating: 8.8,
    synopsis:
        "Forrest Gump is a gentle and kind-hearted man from Alabama who, despite having a below-average IQ, lives an extraordinary life filled with remarkable experiences. Through a series of coincidences and his unwavering optimism, Forrest becomes involved in some of the most pivotal moments of American history, including the Vietnam War, the civil rights movement, and the rise of the technology industry. Throughout his journey, Forrest remains devoted to his childhood love, Jenny Curran, whose troubled life contrasts sharply with his innocence. The film portrays a touching story about destiny, perseverance, and how simple acts of kindness can have profound effects on the world.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/Forrest_Gump",
  ),
  MovieModel(
    title: "The Matrix",
    year: 1999,
    genre: "Sci-Fi, Action, Cyberpunk",
    director: "Lana Wachowski, Lilly Wachowski",
    casts: [
      "Keanu Reeves",
      "Laurence Fishburne",
      "Carrie-Anne Moss",
      "Hugo Weaving",
      "Joe Pantoliano",
    ],
    rating: 8.7,
    synopsis:
        "Thomas Anderson, a computer programmer who secretly works as a hacker known as Neo, begins to question the nature of reality after encountering mysterious messages on his computer. His search for answers leads him to Morpheus, a legendary hacker who reveals a shocking truth: the world Neo knows is actually a simulated reality called the Matrix, created by intelligent machines to control humanity. After being freed from this artificial world, Neo joins a group of rebels fighting against the machines that dominate the real world. As he trains to understand the rules of the Matrix, Neo discovers that he may be 'The One'—a prophesied figure capable of changing the fate of humanity.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/The_Matrix",
  ),

  MovieModel(
    title: "The Godfather",
    year: 1972,
    genre: "Crime, Drama",
    director: "Francis Ford Coppola",
    casts: [
      "Marlon Brando",
      "Al Pacino",
      "James Caan",
      "Robert Duvall",
      "Diane Keaton",
    ],
    rating: 9.2,
    synopsis:
        "The story follows the powerful Corleone crime family in post–World War II America. Don Vito Corleone, the respected and feared patriarch of the family, oversees a vast criminal empire built on loyalty, power, and tradition. When Vito is nearly assassinated by rival gangs, his youngest son Michael Corleone—who once wanted nothing to do with the family business—is drawn into the violent world of organized crime. As Michael becomes more deeply involved in protecting his family's interests, he gradually transforms from a reluctant outsider into a ruthless and calculating leader, ultimately taking over as the new head of the Corleone family.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BNGEwYjgwOGQtYjg5ZS00Njc1LTk2ZGEtM2QwZWQ2NjdhZTE5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/The_Godfather",
  ),

  MovieModel(
    title: "Titanic",
    year: 1997,
    genre: "Romance, Drama, Disaster",
    director: "James Cameron",
    casts: [
      "Leonardo DiCaprio",
      "Kate Winslet",
      "Billy Zane",
      "Kathy Bates",
      "Frances Fisher",
    ],
    rating: 7.8,
    synopsis:
        "Set aboard the ill-fated RMS Titanic in 1912, the film tells the story of Jack Dawson, a poor artist who wins a ticket to board the luxurious ship, and Rose DeWitt Bukater, a young aristocratic woman trapped in an unhappy engagement with the wealthy but controlling Cal Hockley. Despite coming from completely different social classes, Jack and Rose quickly form a deep bond and fall in love during the voyage. Their romance blossoms against the backdrop of the ship's grandeur and rigid class divisions. However, their dreams are shattered when the Titanic strikes an iceberg and begins to sink, forcing passengers into a desperate fight for survival in one of history's most tragic maritime disasters.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BYzYyN2FiZmUtYWYzMy00MzViLWJkZTMtOGY1ZjgzNWMwN2YxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/Titanic_(1997_film)",
  ),

  MovieModel(
    title: "Pulp Fiction",
    year: 1994,
    genre: "Crime, Drama, Dark Comedy",
    director: "Quentin Tarantino",
    casts: [
      "John Travolta",
      "Uma Thurman",
      "Samuel L. Jackson",
      "Bruce Willis",
      "Harvey Keitel",
    ],
    rating: 8.9,
    synopsis:
        "Pulp Fiction weaves together multiple interconnected stories set in the criminal underworld of Los Angeles. The film follows two hitmen, Vincent Vega and Jules Winnfield, who work for powerful mob boss Marsellus Wallace. Their lives intersect with a variety of characters, including Wallace's wife Mia, a washed-up boxer named Butch Coolidge, and a pair of small-time robbers attempting to hold up a diner. Told in a nonlinear narrative style, the film explores themes of violence, redemption, loyalty, and fate while blending dark humor with intense drama. Tarantino's distinctive dialogue and storytelling style make the film one of the most influential crime movies of all time.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BYTViYTE3ZGQtNDBlMC00ZTAyLTkyODMtZGRiZDg0MjA2YThkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/Pulp_Fiction",
  ),

  MovieModel(
    title: "Avatar",
    year: 2009,
    genre: "Sci-Fi, Adventure, Action, Fantasy",
    director: "James Cameron",
    casts: [
      "Sam Worthington",
      "Zoe Saldana",
      "Sigourney Weaver",
      "Stephen Lang",
      "Giovanni Ribisi",
    ],
    rating: 7.8,
    synopsis:
        "Set in the mid-22nd century, the story takes place on Pandora, a lush alien moon rich in valuable minerals but inhabited by the indigenous Na'vi people. Jake Sully, a paraplegic former Marine, is recruited to participate in the Avatar Program, which allows humans to control genetically engineered Na'vi bodies. His mission is to infiltrate the Na'vi community and gather intelligence to help a human corporation exploit Pandora's resources. However, as Jake spends more time among the Na'vi and forms a deep bond with Neytiri, he begins to question the morality of the mission. Torn between loyalty to humanity and his growing connection to Pandora, Jake must choose which side he will ultimately fight for.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BMDEzMmQwZjctZWU2My00MWNlLWE0NjItMDJlYTRlNGJiZjcyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/Avatar_(2009_film)",
  ),

  MovieModel(
    title: "The Lord of the Rings: The Fellowship of the Ring",
    year: 2001,
    genre: "Fantasy, Adventure, Action",
    director: "Peter Jackson",
    casts: [
      "Elijah Wood",
      "Ian McKellen",
      "Viggo Mortensen",
      "Sean Astin",
      "Orlando Bloom",
      "Cate Blanchett",
    ],
    rating: 8.8,
    synopsis:
        "In the peaceful land of the Shire, a young hobbit named Frodo Baggins inherits a mysterious ring from his uncle Bilbo. The wizard Gandalf soon reveals that the ring is actually the One Ring, a powerful artifact created by the dark lord Sauron to dominate Middle-earth. To prevent Sauron from reclaiming it and conquering the world, Frodo must embark on a dangerous journey to destroy the ring in the fires of Mount Doom. He is joined by a diverse group known as the Fellowship of the Ring, including humans, elves, dwarves, and fellow hobbits. Together they face deadly enemies, treacherous landscapes, and internal struggles as they attempt to protect the ring and resist its corrupting power.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl:
        "https://en.wikipedia.org/wiki/The_Lord_of_the_Rings:_The_Fellowship_of_the_Ring",
  ),

  MovieModel(
    title: "Fight Club",
    year: 1999,
    genre: "Drama, Psychological Thriller",
    director: "David Fincher",
    casts: [
      "Brad Pitt",
      "Edward Norton",
      "Helena Bonham Carter",
      "Meat Loaf",
      "Jared Leto",
    ],
    rating: 8.8,
    synopsis:
        "An unnamed office worker suffering from chronic insomnia and dissatisfaction with his consumer-driven lifestyle finds temporary relief by attending support groups for various illnesses. His life changes dramatically when he meets Tyler Durden, a charismatic and rebellious soap salesman who rejects societal norms. Together they create an underground fight club where men gather to vent their frustrations through bare-knuckle fighting. What begins as a form of therapy soon evolves into a much larger and more dangerous movement known as Project Mayhem. As the narrator becomes increasingly entangled in Tyler's radical philosophy, he begins to question his own identity and the true nature of the man who has changed his life.",
    imgUrl:
        "https://m.media-amazon.com/images/M/MV5BOTgyOGQ1NDItNGU3Ny00MjU3LTg2YWEtNmEyYjBiMjI1Y2M5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    movieUrl: "https://en.wikipedia.org/wiki/Fight_Club",
  ),
];
