//
//  MovieCellViewModel.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 17/07/2021.
//

import Foundation

struct MovieCellViewModel {
	let imageURL: URL?
	let title: String
	let seasonCount: Int
	let genres: [String]
	let rating: Float
	let description: String
}
