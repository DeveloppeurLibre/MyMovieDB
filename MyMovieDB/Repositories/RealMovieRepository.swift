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
		
		JSONFetcher.fetchJSON(from: url) { json in
			let results = json["results"] as! [[String: Any]]
			
			for result in results {
				let id = result["id"] as! Int
				IDs.append(id)
			}
			completion(IDs)
		}
	}
	
	func getMovieDetails(id: Int, casting: [Actor], completion: @escaping (Serie) -> Void) {
		let url = URL(string: "https://api.themoviedb.org/3/tv/\(id)?api_key=\(API_KEY)&language=fr")!
		
		JSONFetcher.fetchJSON(from: url) { json in
			
			// Récupérer les saisons
			let seasonJSON = json["seasons"] as! [[String: Any]]
			var seasons = [Season]()
			for season in seasonJSON {
				let newSeason = SeasonMapper.map(jsonSeason: season)
				seasons.append(newSeason)
			}
			
			let serie = SerieMapper.map(jsonSerie: json, casting: casting, seasons: seasons)
			
			completion(serie)
		}
	}
	
	func getCreditsDetails(forMovieID id: Int, completion: @escaping ([Actor]) -> Void) {
		let url = URL(string: "https://api.themoviedb.org/3/tv/\(id)/credits?api_key=\(API_KEY)&language=fr")!
		
		JSONFetcher.fetchJSON(from: url) { json in
			var actors = [Actor]()
			let cast = json["cast"] as! [[String: Any]]
			for actor in cast {
				let newActor = ActorMapper.map(jsonActor: actor)
				actors.append(newActor)
			}
			
			completion(actors)
		}
	}
}
