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
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: vegetable.thumbnailImage) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color.gray.opacity(0.3)
                        .overlay {
                            ProgressView()
                                .scaleEffect(1.5)
                                .progressViewStyle(.circular)
                                .tint(.gray)
                        }
                }
                .frame(height: 300)
                .clipShape(
                    RoundedRectangle(cornerRadius: 16)
                )
                .padding(.horizontal, 16)

                Text(vegetable.name)
                    .font(.largeTitle.bold())
                    .multilineTextAlignment(.leading)

                Text(vegetable.body)
                    .foregroundStyle(.secondary)
                    .lineSpacing(4)

                Divider()

                Text("Quick Facts")
                    .font(.title2.bold())

                DetailRow(
                    icon: "leaf",
                    title: "Seed Depth",
                    value: vegetable.seedDepth
                )

                DetailRow(
                    icon: "thermometer",
                    title: "Germination Temp",
                    value: vegetable.germinationSoilTemp
                )
            }
        }
        .padding()
    }
}

struct DetailRow: View {
    let icon: String
    let title: String
    let value: String

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .foregroundStyle(.green)
                .frame(width: 24, height: 24)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Text(value)
                    .foregroundStyle(.primary)
            }
        }
        //        .padding(.bottom, 4)
    }
}

#Preview {
    VegetableTabBarScreen()
}
