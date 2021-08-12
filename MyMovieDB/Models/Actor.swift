//
//  Actor.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 18/07/2021.
//

import Foundation

struct Actor: Identifiable {
	let id = UUID()
	let url: URL?
	let name: String
	let characterName: String
}
