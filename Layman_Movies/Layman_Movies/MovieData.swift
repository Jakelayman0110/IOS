//
//  MovieData.swift
//  Layman_Movies
//
//  Created by Jacob Layman on 11/27/23.
//

import Foundation
import UIKit

struct Movie {
    var title : String
    var image : UIImage
    var releasedYear : String
    var movieRating : String
    var boxOffice : String
    var moviePlot : String
    var cast : [String]
    
}

struct genre {
    var category : String
    var movies : [Movie]
}

let horror: genre = genre(category: "Horror", movies: [
    Movie(title: "A Quiet Place", image: UIImage(named: "quiet_place")!, releasedYear: "2018", movieRating: "PG-13", boxOffice: "7.5/10", moviePlot: "In a post-apocalyptic world, a family must live in silence to avoid mysterious creatures that hunt by sound.", cast: ["Emily Blunt", "John Krasinski", "Millicent Simmonds"]),
    Movie(title: "Get Out", image: UIImage(named: "get_out")!, releasedYear: "2017", movieRating: "R", boxOffice: "7.7/10", moviePlot: "A young African-American visits his white girlfriend's parents for the weekend, where things take a terrifying turn.", cast: ["Daniel Kaluuya", "Allison Williams", "Bradley Whitford"]),
    Movie(title: "Hereditary", image: UIImage(named: "hereditary")!, releasedYear: "2018", movieRating: "R", boxOffice: "7.3/10", moviePlot: "A family's dark secrets and supernatural forces haunt their lives after the death of their secretive grandmother.", cast: ["Toni Collette", "Alex Wolff", "Milly Shapiro"]),
    Movie(title: "The Babadook", image: UIImage(named: "babadook")!, releasedYear: "2014", movieRating: "NR", boxOffice: "6.8/10", moviePlot: "A single mother and her son are tormented by a sinister presence that emerges from a mysterious children's book.", cast: ["Essie Davis", "Noah Wiseman", "Daniel Henshall"]),
    Movie(title: "The Witch", image: UIImage(named: "witch")!, releasedYear: "2015", movieRating: "R", boxOffice: "6.9/10", moviePlot: "In 1630 New England, a family faces disturbing occurrences in the wilderness, believing a witch is among them.", cast: ["Anya Taylor-Joy", "Ralph Ineson", "Kate Dickie"])
])

    

let comedy: genre = genre(category: "Comedy", movies: [
    Movie(title: "The Hangover", image: UIImage(named: "hangover")!, releasedYear: "2009", movieRating: "R", boxOffice: "7.7/10", moviePlot: "A bachelor party in Vegas goes hilariously wrong, and three friends must piece together what happened.", cast: ["Bradley Cooper", "Ed Helms", "Zach Galifianakis"]),
    Movie(title: "Bridesmaids", image: UIImage(named: "bridesmaids")!, releasedYear: "2011", movieRating: "R", boxOffice: "6.8/10", moviePlot: "Annie, a maid of honor, leads her best friend's bridesmaids on a wild ride to provide the perfect wedding experience.", cast: ["Kristen Wiig", "Maya Rudolph", "Rose Byrne"]),
    Movie(title: "Anchorman: The Legend of Ron Burgundy", image: UIImage(named: "anchorman")!, releasedYear: "2004", movieRating: "PG-13", boxOffice: "7.2/10", moviePlot: "The top-rated anchorman in San Diego in the 1970s clashes with a new female journalist.", cast: ["Will Ferrell", "Christina Applegate", "Paul Rudd"]),
    Movie(title: "Napoleon Dynamite", image: UIImage(named: "napoleon")!, releasedYear: "2004", movieRating: "PG", boxOffice: "6.9/10", moviePlot: "An awkward teenager helps his friend run for class president while dealing with his quirky family.", cast: ["Jon Heder", "Efren Ramirez", "Jon Gries"]),
    Movie(title: "The Grand Budapest Hotel", image: UIImage(named: "grand_budapest")!, releasedYear: "2014", movieRating: "R", boxOffice: "8.1/10", moviePlot: "The adventures of a legendary concierge and his lobby boy at a famous European hotel.", cast: ["Ralph Fiennes", "F. Murray Abraham", "Mathieu Amalric"])
])


let action: genre = genre(category: "Action", movies: [
    Movie(title: "Mad Max: Fury Road", image: UIImage(named: "mad_max")!, releasedYear: "2015", movieRating: "R", boxOffice: "8.1/10", moviePlot: "In a post-apocalyptic world, Max teams up with Furiosa to escape a tyrant and his army in a high-speed chase.", cast: ["Tom Hardy", "Charlize Theron", "Nicholas Hoult"]),
    Movie(title: "The Matrix", image: UIImage(named: "matrix")!, releasedYear: "1999", movieRating: "R", boxOffice: "8.7/10", moviePlot: "A computer hacker learns about the true nature of reality and his role in the war against its controllers.", cast: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"]),
    Movie(title: "Die Hard", image: UIImage(named: "die_hard")!, releasedYear: "1988", movieRating: "R", boxOffice: "8.2/10", moviePlot: "NYPD officer John McClane takes on a group of terrorists who have taken hostages in a Los Angeles skyscraper.", cast: ["Bruce Willis", "Alan Rickman", "Bonnie Bedelia"]),
    Movie(title: "Inception", image: UIImage(named: "inception")!, releasedYear: "2010", movieRating: "PG-13", boxOffice: "8.8/10", moviePlot: "A thief who enters people's dreams to steal their secrets is tasked with planting an idea into someone's mind.", cast: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Ellen Page"]),
    Movie(title: "The Avengers", image: UIImage(named: "avengers")!, releasedYear: "2012", movieRating: "PG-13", boxOffice: "8.0/10", moviePlot: "A team of superheroes must come together to stop Thor's brother, Loki, from enslaving humanity.", cast: ["Robert Downey Jr.", "Chris Evans", "Scarlett Johansson"])
])

let moviegenres : [genre] = [horror, comedy, action]
