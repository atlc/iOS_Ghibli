//
//  FilmDetailsView.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation
import SwiftUI

struct FilmDetailsView: View {
    @StateObject private var filmDetailsModel = FilmDetailsViewModel()
    var id: String
    
    var body: some View {
        NavigationView {
            List(filmDetailsModel.films) { film in
                VStack {
                    AsyncImage(url: film.image) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    Text("Rotten Tomatoes: \(film.rt_score)/100")
                    Text("Released: \(film.release_date)")
                    Text("Directed by: \(film.director)")
                    Text("Produced by: \(film.producer)")
                    Text(film.description).italic()
                }
            }
            .onAppear {
                filmDetailsModel.getFilmDetails(id:  id)
            }
            .navigationTitle(filmDetailsModel.films.first?.title ?? "Film Details")
        }
    }
}
