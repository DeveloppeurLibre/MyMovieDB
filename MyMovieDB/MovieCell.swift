//
//  MovieCell.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 16/07/2021.
//

import SwiftUI
import Kingfisher

struct MovieCell: View {
    var body: some View {
		HStack {
			KFImage(URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1LRLLWGvs5sZdTzuMqLEahb88Pc.jpg"))
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 100, height: 150)
				.clipped()
				.cornerRadius(8.0)
			VStack(alignment: .leading, spacing: 8) {
				HStack {
					VStack(alignment: .leading) {
						Text("Ragnarök")
							.font(.title2)
							.fontWeight(.semibold)
						Text("Saisons + types + etc")
							.foregroundColor(Color.white.opacity(0.5))
							.font(.caption)
							.lineLimit(1)
					}
					Spacer()
					Text("Note")
				}
				Text("Dans un village norvégien pollué et troublé par la fonte des glaciers, la fin des temps semble bien réelle. Mais un combat doit opposer une légende à un mal ancestral.")
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
    static var previews: some View {
        MovieCell()
			.previewLayout(.sizeThatFits)
    }
}
