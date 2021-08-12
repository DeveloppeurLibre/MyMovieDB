//
//  DetailView.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 11/08/2021.
//

import SwiftUI

struct DetailView: View {
	
	let serie: Serie
	
    var body: some View {
		ScrollView {
			let movieDetailViewModel = MovieDetailHeaderViewModel(
				imageURL: serie.imageURL,
				title: serie.title,
				seasonsCount: serie.seasons.count,
				genres: serie.genres,
				rating: serie.rating
			)
			MovieDetailHeaderView(viewModel: movieDetailViewModel)
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(alignment: .top) {
					ForEach(serie.casting) { actor in
						let actorCellViewModel = ActorCellViewModel(
							url: actor.url,
							name: actor.name,
							characterName: actor.characterName
						)
						ActorCell(viewModel: actorCellViewModel)
							.frame(width: 100)
					}
				}
			}
			
			ForEach(serie.seasons) { season in
				let seasonViewModel = SeasonViewModel(
					imageURL: season.imageURL,
					seasonNumber: season.seasonNumber,
					episodesCount: season.episodesCount,
					description: season.description
				)
				SeasonView(viewModel: seasonViewModel)
			}
		}
		.background(Color(red: 22/255, green: 32/255, blue: 53/255).ignoresSafeArea())
		.navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView(serie: mockedSerie)
    }
}
