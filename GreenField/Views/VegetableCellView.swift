//
//  VegetableCellView.swift
//  GreenField
//
//  Created by Edwin Cardenas on 5/15/26.
//

import SwiftUI

struct VegetableCellView: View {
    let vegetable: Vegetable

    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: vegetable.thumbnailImage) { image in
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    .green.opacity(0.3),
                                    .blue.opacity(0.3),
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 85)
                        .shadow(
                            color: .black.opacity(0.1),
                            radius: 6,
                            x: 0,
                            y: 4
                        )

                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75)
                        .clipShape(.circle)
                        .shadow(
                            color: .black.opacity(0.2),
                            radius: 4,
                            x: 0,
                            y: 2
                        )
                }
            } placeholder: {
                ZStack {
                    Circle()
                        .fill(
                            RadialGradient(
                                colors: [
                                    .gray.opacity(0.3),
                                    .gray.opacity(0.1),
                                ],
                                center: .center,
                                startRadius: 10,
                                endRadius: 40
                            )
                        )
                        .frame(width: 85)

                    ProgressView()
                        .scaleEffect(1.2)
                        .progressViewStyle(.circular)
                        .tint(.gray)
                }
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(vegetable.name)
                    .font(.headline)
                    .foregroundStyle(.primary)

                Text(vegetable.body)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
        }
    }
}

#Preview {
    VegetableListScreen()
}
