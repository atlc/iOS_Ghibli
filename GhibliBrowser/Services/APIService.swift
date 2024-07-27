//
//  APIService.swift
//  GhibliBrowser
//
//  Created by user263110 on 7/26/24.
//

import Foundation

func fetcher<T: Codable>(from endpoint: String) async throws ->  T {
    let url = URL(string: endpoint)!
    let (data, _) = try await URLSession.shared.data(from: url)
    let parsed = try JSONDecoder().decode(T.self, from: data);
    
    return parsed
}
