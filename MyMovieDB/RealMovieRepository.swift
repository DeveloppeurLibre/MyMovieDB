//
//  RealMovieRepository.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 18/07/2021.
//

import Foundation

class RealMovieRepository {
	
	func getSeries() -> [Serie] {
		let url = URL(string: "https://api.themoviedb.org/3/tv/popular?api_key=\(API_KEY)&language=fr")!
		
		let task = URLSession.shared.dataTask(with: url) { data, response, error in
			guard let data = data else { return }
			print(String(data: data, encoding: .utf8)!)
		}
		task.resume()
		
		return []
	}
}
