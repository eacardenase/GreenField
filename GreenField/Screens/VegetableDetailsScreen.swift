//
//  VegetableDetailsScreen.swift
//  GreenField
//
//  Created by Edwin Cardenas on 5/16/26.
//

import SwiftUI

struct VegetableDetailsScreen: View {
    let vegetable: Vegetable

    var body: some View {
        Text(vegetable.name)
    }
}

#Preview {
    VegetableListScreen()
}
