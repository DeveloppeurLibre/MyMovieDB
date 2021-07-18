//
//  SeasonView.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 16/07/2021.
//

import SwiftUI
import Kingfisher

struct SeasonView: View {
	
	let viewModel: SeasonViewModel
	
	var body: some View {
		HStack(spacing: 16) {
			KFImage(viewModel.imageURL)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 100, height: 150)
				.cornerRadius(8.0)
			VStack(alignment: .leading, spacing: 8) {
				VStack(alignment: .leading, spacing: 0) {
					Text("Season \(viewModel.seasonNumber)")
						.font(.title2)
						.fontWeight(.semibold)
					Text("\(viewModel.episodesCount) episodes")
						.foregroundColor(Color.white.opacity(0.5))
						.font(.caption)
						.lineLimit(1)
				}
				Text(viewModel.description)
					.font(.callout)
					.fontWeight(.light)
					.lineLimit(4)
			}
			Spacer()
		}
		.foregroundColor(.white)
		.padding(8)
	}
}

struct SeasonView_Previews: PreviewProvider {
	
	static let viewModel = SeasonViewModel(
		imageURL: URL(string: "https://www.themoviedb.org/t/p/w130_and_h195_bestv2/ivEL7yCYXwQsdlDqPvGEbxyMdjr.jpg"),
		seasonNumber: 2,
		episodesCount: 6,
		description: "La saison 2 de Ragnarök a été diffusée à partir du 27 mai 2021."
	)
	
	static var previews: some View {
		SeasonView(viewModel: viewModel)
			.previewLayout(.sizeThatFits)
			.background(Color(red: 22/255, green: 32/255, blue: 53/255))
	}
}
