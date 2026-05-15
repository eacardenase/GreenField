//
//  VegetableListScreen.swift
//  GreenField
//
//  Created by Edwin Cardenas on 5/10/26.
//

import SwiftUI

struct VegetableListScreen: View {
    @State private var vegetables = [Vegetable]()

    var body: some View {
        List(vegetables) { vegetable in
            VegetableCellView(vegetable: vegetable)
        }
        .navigationTitle("Vegetables")
        .task {
            do {
                vegetables = try await VegetableHTTPClient.fetchVegetable()
            } catch {
                print(
                    "Failed to load vegetable with error: \(error.localizedDescription)"
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        VegetableListScreen()
    }
}
