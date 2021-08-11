//
//  MovieInteractor.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 11/08/2021.
//

import Foundation

class MovieInteractor {
	
	let movieRepository = RealMovieRepository()
	
	func getSeries(completion: @escaping ([Serie]) -> Void) {
		var fetchedSeries = [Serie]()
		movieRepository.getPopularSerieIDs { serieIDs in
			for id in serieIDs {
				self.movieRepository.getCreditsDetails(forMovieID: id) { casting in
					self.movieRepository.getMovieDetails(id: id, casting: casting) { serie in
						fetchedSeries.append(serie)
						completion(fetchedSeries)
					}
				}
			}
		}
	}
}
