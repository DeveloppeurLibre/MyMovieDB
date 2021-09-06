//
//  AppState.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 06/09/2021.
//

import Foundation

class AppState: ObservableObject {
	
	@Published var series: [Serie] = []
	
	static var preview: AppState {
		let appState = AppState()
		appState.series = [
			mockedSerie,
			mockedSerie,
			mockedSerie
		]
		return appState
	}
}
