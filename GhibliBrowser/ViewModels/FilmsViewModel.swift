//
//  FilmsViewModel.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation

class FilmsViewModel: ObservableObject {
    @Published var films: [Film] = []
    
    func getFilms() {
        Task {
            do {
                let films: [Film] = try await fetcher(from: "https://api-ghibli.herokuapp.com/films")
                self.films = films
            } catch {
                print(error)
            }
        }
    }
}
