//
//  SerieMapper.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 06/09/2021.
//

import Foundation

class SerieMapper {
	
	static func map(jsonSerie: [String: Any], casting: [Actor], seasons: [Season]) -> Serie {
		let posterPath = jsonSerie["poster_path"] as? String
		let name = jsonSerie["name"] as! String
		let overview = jsonSerie["overview"] as! String
		let voteAverage = jsonSerie["vote_average"] as! NSNumber
		let genresJSON = jsonSerie["genres"] as! [[String: Any]]
		
		// Récupérer les genres
		var genres = [String]()
		for genre in genresJSON {
			let newGenre = genre["name"] as! String
			genres.append(newGenre)
		}
		
		return Serie(
			imageURL: URL(string: "https://image.tmdb.org/t/p/w500/\(posterPath ?? "")"),
			title: name,
			description: overview,
			seasons: seasons,
			genres: genres,
			casting: casting,
			rating: Float(truncating: voteAverage)
		)
	}
}
