//
//  FilmDetailsViewModel.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation

class FilmDetailsViewModel: ObservableObject {
    @Published var films: [Film] = []
    
    func getFilmDetails(id: String) {
        Task {
            do {
                let film: Film = try await fetcher(from: "https://api-ghibli.herokuapp.com/films/"+id)
                self.films = [film]
            } catch {
                print(error)
            }
        }
    }
}

