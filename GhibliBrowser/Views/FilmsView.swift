//
//  FilmsView.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation
import SwiftUI

struct FilmsView: View {
    @StateObject private var filmModel = FilmsViewModel()
    
    var body: some View {
        NavigationView {
            List(filmModel.films) { film in
                NavigationLink(destination: FilmDetailsView(id: film.id)) {
                    Text(film.title).bold()
                }
                VStack {
                    AsyncImage(url: film.movie_banner) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    Text(film.description.prefix(100) + "...").italic()
                }
            }
            .onAppear {
                filmModel.getFilms()
            }
            .navigationTitle("Films")
        }
    }
}
