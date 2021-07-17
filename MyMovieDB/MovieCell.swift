//
//  MovieCell.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 16/07/2021.
//

import SwiftUI
import Kingfisher

struct MovieCell: View {
	
	let viewModel: MovieCellViewModel
	
    var body: some View {
		HStack {
			KFImage(viewModel.imageURL)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 100, height: 150)
				.clipped()
				.cornerRadius(8.0)
			VStack(alignment: .leading, spacing: 8) {
				HStack {
					VStack(alignment: .leading) {
						Text(viewModel.title)
							.font(.title2)
							.fontWeight(.semibold)
						Text("\(viewModel.seasonCount) saisons | \(viewModel.genres.joined(separator: " • "))")
							.foregroundColor(Color.white.opacity(0.5))
							.font(.caption)
							.lineLimit(1)
					}
					Spacer()
					CircleProgressBar(progress: viewModel.rating)
						.frame(width: 45, height: 45)
						.padding(2.5)
				}
				Text(viewModel.description)
					.font(.callout)
					.fontWeight(.light)
					.lineLimit(4)
			}
		}
		.padding(8)
		.background(Color(red: 22/255, green: 32/255, blue: 53/255))
		.foregroundColor(.white)
    }
}

struct MovieCell_Previews: PreviewProvider {
	
	static let viewModel = MovieCellViewModel(
		imageURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1LRLLWGvs5sZdTzuMqLEahb88Pc.jpg"),
		title: "Ragnarök",
		seasonCount: 2,
		genres: ["Science-Fiction", "Fantastique", "Drame", "Mystère"],
		rating: 8.2,
		description: "La saison 2 de Ragnarök a été diffusée à partir du 27 mai 2021."
	)
	
    static var previews: some View {
		MovieCell(viewModel: viewModel)
			.previewLayout(.sizeThatFits)
    }
}
