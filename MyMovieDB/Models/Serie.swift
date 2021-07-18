//
//  Serie.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 18/07/2021.
//

import Foundation

struct Serie: Identifiable {
	let id = UUID()
	let imageURL: URL?
	let title: String
	let description: String
	let seasons: [Season]
	let genres: [String]
	let casting: [Actor]
	let rating: Float
}
