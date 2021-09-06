//
//  ActorMapper.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 06/09/2021.
//

import Foundation

class ActorMapper {
	
	static func map(jsonActor: [String: Any]) -> Actor {
		let profilePath = jsonActor["profile_path"] as? String
		let name = jsonActor["name"] as! String
		let character = jsonActor["character"] as! String
		
		return Actor(
			url: URL(string: "https://image.tmdb.org/t/p/w500/\(profilePath ?? "")"),
			name: name,
			characterName: character
		)
	}
}
