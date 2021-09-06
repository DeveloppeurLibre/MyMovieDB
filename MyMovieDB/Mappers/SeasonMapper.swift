//
//  SeasonMapper.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 06/09/2021.
//

import Foundation

class SeasonMapper {
	
	static func map(jsonSeason: [String: Any]) -> Season {
		let posterPath = jsonSeason["poster_path"] as? String
		return Season(
			imageURL: URL(string: "https://image.tmdb.org/t/p/w500/\(posterPath ?? "")"),
			seasonNumber: jsonSeason["season_number"] as! Int,
			episodesCount: jsonSeason["episode_count"] as! Int,
			description: jsonSeason["overview"] as! String
		)
	}
}
