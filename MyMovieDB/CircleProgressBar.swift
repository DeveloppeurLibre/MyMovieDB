//
//  CircleProgressBar.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 16/07/2021.
//

import SwiftUI

struct CircleProgressBar: View {
	
	let progress: Float
	
    var body: some View {
		ZStack {
			Circle()
				.stroke(Color.white.opacity(0.2), lineWidth: 5.0)
			Circle()
				.trim(from: 0.0, to: CGFloat(min(progress / 10, 1.0)))
				.stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
				.foregroundColor(Color(red: 243/255, green: 119/255, blue: 39/255))
				.rotationEffect(Angle(degrees: 270))
			Text(String(format: "%.1f", progress))
				.foregroundColor(.white)
		}
    }
}

struct CircleProgressBar_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			CircleProgressBar(progress: 5)
			CircleProgressBar(progress: 2.4)
			CircleProgressBar(progress: 8.1)
		}
		.frame(width: 50, height: 50)
		.padding()
		.background(Color(red: 22/255, green: 32/255, blue: 53/255))
		.previewLayout(.sizeThatFits)
    }
}
