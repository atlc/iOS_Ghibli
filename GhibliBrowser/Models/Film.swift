//
//  Film.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation

struct Film: Codable, Identifiable {
    let id: String
    let title: String
    let original_title: String
    let original_title_romanised: String
    let image: URL
    let movie_banner: URL
    let description: String
    let director: String
    let producer: String
    let release_date: String
    let running_time: String
    let rt_score: String
    let people: [String]
    let species: [String]
    let locations: [String]
    let vehicles: [String]
    let url: URL
}
