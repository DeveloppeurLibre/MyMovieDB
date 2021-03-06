//
//  HomeView.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 18/07/2021.
//

import SwiftUI

struct HomeView: View {
	
	let movieRepository = RealMovieRepository()
	@EnvironmentObject var appState: AppState
	
	init() {
		let appearance = UINavigationBarAppearance()
		appearance.configureWithTransparentBackground()
		appearance.largeTitleTextAttributes = [
			NSAttributedString.Key.foregroundColor: UIColor.white
		]
		appearance.titleTextAttributes = [
			NSAttributedString.Key.foregroundColor: UIColor.white
		]
		UINavigationBar.appearance().scrollEdgeAppearance = appearance
		UINavigationBar.appearance().standardAppearance = appearance
		
		UINavigationBar.appearance().backgroundColor = UIColor(displayP3Red: 22/255, green: 32/255, blue: 53/255, alpha: 1.0)
		UINavigationBar.appearance().tintColor = .white
	}
	
    var body: some View {
		ZStack(alignment: .top) {
			NavigationView {
				ScrollView {
					ForEach(appState.series) { medium in
						let viewModel = MovieCellViewModel(
							imageURL: medium.imageURL,
							title: medium.title,
							seasonCount: medium.seasons.count,
							genres: medium.genres,
							rating: medium.rating,
							description: medium.description
						)
						NavigationLink(
							destination: DetailView(serie: medium),
							label: {
								MovieCell(viewModel: viewModel)
							}
						)
					}
				}
				.navigationTitle("My Movies")
				.background(Color(red: 22/255, green: 32/255, blue: 53/255).ignoresSafeArea())
			}
			.onAppear(perform: {
				loadSeries()
			})
			Rectangle()
				.frame(height: 60)
				.foregroundColor(Color(red: 22/255, green: 32/255, blue: 53/255))
				.ignoresSafeArea()
		}
    }
	
	func loadSeries() {
		MovieInteractor().getSeries { series in
			DispatchQueue.main.async {
				appState.series = series
			}
		}
	}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
			.environmentObject(AppState.preview)
    }
}
