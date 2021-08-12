//
//  MockedData.swift
//  MyMovieDB
//
//  Created by Quentin Cornu on 18/07/2021.
//

import Foundation

let mockedCasting = [
	Actor(
		url: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7Jahy5LZX2Fo8fGJltMreAI49hC.jpg"),
		name: "Bryan Cranston",
		characterName: "Walter White"
	),
	Actor(
		url: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nLM4gmGTLLDmdMDxJsflc0zf5QG.jpg"),
		name: "Aaron Paul",
		characterName: "Jesse Pinkman"
	),
	Actor(
		url: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/adppyeu1a4REN3khtgmXusrapFi.jpg"),
		name: "Anna Gunn",
		characterName: "Skyler White"
	)
]

let mockedSeasons = [
	Season(
		imageURL: URL(string: "https://www.themoviedb.org/t/p/w130_and_h195_bestv2/maa5tGyJqp5M0RQ7jC4RDZxgzfu.jpg"),
		seasonNumber: 5,
		episodesCount: 16,
		description: "« Walt » et Jesse, après la mort de Gustavo « Gus » Fring, décident de poursuivre la production de métamphétamine accompagnés de Mike. Walter prend cette décision car ayant perdu la majeure partie de l'argent qu'il avait accumulé lors de sa collaboration avec « Gus », sa femme Skyler ayant donné à son employeur Ted Beneke la somme de 600 000 dollars pour rembourser le fisc. La relation entre Walt et sa femme se détériore progressivement."
	),
	Season(
		imageURL: URL(string: "https://www.themoviedb.org/t/p/w130_and_h195_bestv2/swtEUT9WmNRyuPVpJ8XtbG1Mm3o.jpg"),
		seasonNumber: 4,
		episodesCount: 13,
		description: "Walter essaye de retrouver une certaine stabilité dans sa vie professionnelle, tandis que Jesse va plus mal que jamais, étant proche d'un état dépressif. Mais grâce au deuxième travail qu'il effectue avec Mike, il retrouve alors un peu d'équilibre, et est habilité à protéger Gus lors de son attentat contre le cartel. De son côté, Gus négocie avec le cartel la libération de ses obligations, après avoir éliminé ses concurrents et part en croisade contre eux."
	),
]

let mockedSerie = Serie(
	imageURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ggFHVNu6YYI5L9pCfOacjizRGt.jpg"),
	title: "Breaking Bad",
	description: "Un professeur de chimie d'un lycée d'Albuquerque, au Nouveau-Mexique, atteint d'un cancer pulmonaire en phase terminale, s'associe à un ancien élève, toxicomane et dealer, afin d'assurer l'avenir financier de sa famille en fabriquant et en commercialisant la plus pure méthamphétamine en cristaux jamais synthétisée.",
	seasons: mockedSeasons,
	genres: ["Drame", "Science"],
	casting: mockedCasting,
	rating: 8.7
)
