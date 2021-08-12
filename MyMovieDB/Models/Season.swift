//
//  Season.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 18/07/2021.
//

import Foundation

struct Season: Identifiable {
	let id = UUID()
	let imageURL: URL?
	let seasonNumber: Int
	let episodesCount: Int
	let description: String
}
