//
//  MyMovieDBApp.swift
//  MyMovieDB
//

import SwiftUI

@main
struct MyMovieDBApp: App {
	
	private let appState = AppState()
	
    var body: some Scene {
        WindowGroup {
            HomeView()
				.environmentObject(appState)
        }
    }
}
