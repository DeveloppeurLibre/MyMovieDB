//
//  ActorCell.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 16/07/2021.
//

import SwiftUI
import Kingfisher

struct ActorCell: View {
	
	let viewModel: ActorCellViewModel
	
	var body: some View {
		VStack {
			KFImage(viewModel.url)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 80, height: 80)
				.clipShape(Circle())
			Text(viewModel.name)
				.font(.footnote)
				.fontWeight(.semibold)
			Text(viewModel.characterName)
				.font(.caption2)
				.foregroundColor(Color.white.opacity(0.5))
		}
		.fixedSize(horizontal: false, vertical: true)
		.padding(4)
		.foregroundColor(.white)
	}
}

struct ActorCell_Previews: PreviewProvider {
	
	static let viewModel = ActorCellViewModel(
		url: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fRXYuDrmFT4x792MeoebK3E9A3A.jpg"),
		name: "David Alexander",
		characterName: "Magne"
	)
	
	static var previews: some View {
		ActorCell(viewModel: viewModel)
			.frame(width: 120)
			.background(Color(red: 22/255, green: 32/255, blue: 53/255))
			.previewLayout(.sizeThatFits)
	}
}
