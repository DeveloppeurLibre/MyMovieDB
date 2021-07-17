//
//  MovieDetailHeaderViewModel.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 17/07/2021.
//

import Foundation

struct MovieDetailHeaderViewModel {
	let imageURL: URL?
	let title: String
	let seasonsCount: Int
	let genres: [String]
	let rating: Float
}
