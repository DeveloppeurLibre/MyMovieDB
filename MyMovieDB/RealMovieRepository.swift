//
//  RealMovieRepository.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 18/07/2021.
//

import Foundation

class RealMovieRepository {
	
	func getPopularSerieIDs(completion: @escaping ([Int]) -> Void) {
		let url = URL(string: "https://api.themoviedb.org/3/tv/popular?api_key=\(API_KEY)&language=fr")!
		
		var IDs = [Int]()
		let task = URLSession.shared.dataTask(with: url) { data, response, error in
			guard let data = data else { return }
			guard let json = self.getJSON(from: data) else { return }
			
			let results = json["results"] as! [[String: Any]]
			
			for result in results {
				let id = result["id"] as! Int
				IDs.append(id)
			}
			completion(IDs)
		}
		task.resume()
	}
	
	private func getJSON(from data: Data) -> [String: Any]? {
		do {
			let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
			return json
		} catch {
			print("Erreur de conversion")
			return nil
		}
	}
}
