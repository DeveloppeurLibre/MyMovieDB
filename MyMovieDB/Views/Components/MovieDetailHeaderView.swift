//
//  MovieDetailHeaderView.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 17/07/2021.
//

import SwiftUI
import Kingfisher

struct MovieDetailHeaderView: View {
	
	let viewModel: MovieDetailHeaderViewModel
	
    var body: some View {
		VStack {
			ZStack(alignment: .bottom) {
				KFImage(viewModel.imageURL)
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(height: 300)
					.clipped()
				HStack(alignment: .bottom) {
					VStack(alignment: .leading, spacing: 8) {
						Text(viewModel.title)
							.font(.title)
							.fontWeight(.bold)
							.foregroundColor(.white)
						Text("\(viewModel.seasonsCount) saisons" + " | " + viewModel.genres.joined(separator: " • "))
							.foregroundColor(Color.white.opacity(0.6))
							.font(.footnote)
					}
					Spacer()
					CircleProgressBar(progress: viewModel.rating)
						.frame(width: 45, height: 45)
						.padding(2.5)
				}
				.padding()
				.padding(.top, 80)
				.background(
					LinearGradient(
						gradient: Gradient(colors: [.clear, Color(red: 22/255, green: 32/255, blue: 53/255)]),
						startPoint: .top,
						endPoint: .bottom
					)
				)
			}
		}
    }
}

struct MovieDetailHeaderView_Previews: PreviewProvider {
	
	static let viewModel = MovieDetailHeaderViewModel(
		imageURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1LRLLWGvs5sZdTzuMqLEahb88Pc.jpg"),
		title: "Ragnarök",
		seasonsCount: 2,
		genres: ["Science-Fiction", "Fantastique", "Drame", "Mystère"],
		rating: 8.1
	)
	
    static var previews: some View {
		MovieDetailHeaderView(viewModel: viewModel)
		.previewLayout(.sizeThatFits)
    }
}
