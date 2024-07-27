//
//  Location.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation

struct Location: Codable, Identifiable {
    let id: String
    let name: String
    let climate: String
    let terrain: String
    let surface_water: String
    let residents: [String]
    let films: [String]
    let url: String
}
