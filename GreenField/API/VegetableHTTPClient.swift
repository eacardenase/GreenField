//
//  VegetableHTTPClient.swift
//  GreenField
//
//  Created by Edwin Cardenas on 5/10/26.
//

import Foundation

struct VegetableHTTPClient {
    static func fetchVegetable() async throws -> [Vegetable] {
        let url = URL(string: "https://azamsharp.com/vegetables.json")!
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)

        return try JSONDecoder().decode([Vegetable].self, from: data)
    }
}
