//
//  VegetableTabBarScreen.swift
//  GreenField
//
//  Created by Edwin Cardenas on 5/16/26.
//

import SwiftUI

struct VegetableTabBarScreen: View {
    var body: some View {
        TabView {
            Tab("Vegetables", systemImage: "leaf") {
                NavigationStack {
                    VegetableListScreen()
                }
            }

            Tab("My Garden", systemImage: "house") {
                NavigationStack {
                    Text("My Garden Screen")
                }
            }

            Tab("Pests", systemImage: "ladybug") {
                NavigationStack {
                    Text("Pests")
                }
            }
        }
    }
}

#Preview {
    VegetableTabBarScreen()
}
