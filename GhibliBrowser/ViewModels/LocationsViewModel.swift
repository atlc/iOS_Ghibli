//
//  LocationsViewModel.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location] = []
    
    func getLocations() {
        Task {
            do {
                let locations: [Location] = try await fetcher(from: "https://api-ghibli.herokuapp.com/locations")
                self.locations = locations
            } catch {
                print(error)
            }
        }
    }
}
