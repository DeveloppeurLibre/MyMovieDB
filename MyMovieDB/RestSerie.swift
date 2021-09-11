//
//  RestSerie.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 11/09/2021.
//

import Foundation

struct RestSerie {
	let name: String
	let poster_path: String?
	let overview: String
	let vote_average: Float
	let genres: [RestGenre]
	let seasons: [RestSeason]
}

struct RestGenre {
	let name: String
}

struct RestSeason {
	let poster_path: String
	let episode_count: Int
	let overview: String
	let season_number: Int
}
