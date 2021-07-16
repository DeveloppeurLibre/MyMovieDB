//
//  ActorCell.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 16/07/2021.
//

import SwiftUI
import Kingfisher

struct ActorCell: View {
	
	let url: URL?
	let name: String
	let characterName: String
	
    var body: some View {
		VStack {
			KFImage(url)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 80, height: 80)
				.clipShape(Circle())
			Text(name)
				.font(.footnote)
				.fontWeight(.semibold)
			Text(characterName)
				.font(.caption2)
				.foregroundColor(Color.white.opacity(0.5))
		}
		.fixedSize(horizontal: false, vertical: true)
		.padding(4)
		.foregroundColor(.white)
    }
}

struct ActorCell_Previews: PreviewProvider {
    static var previews: some View {
		ActorCell(url: URL(
					string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fRXYuDrmFT4x792MeoebK3E9A3A.jpg"),
				  name: "David Alexander",
				  characterName: "Magne"
		)
		.frame(width: 120)
		.background(Color(red: 22/255, green: 32/255, blue: 53/255))
		.previewLayout(.sizeThatFits)
    }
}
