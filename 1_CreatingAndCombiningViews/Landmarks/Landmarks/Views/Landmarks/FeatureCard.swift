//
//  FeatureCard.swift
//  Landmarks
//
//  Created by YJ on 11/26/23.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

struct TextOverlay: View {
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(
                colors: [.black
                .opacity(0.6), .black.opacity(0)]),
                startPoint: .bottom,
                endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading, content: {
            gradient
            VStack(alignment: .leading, content: {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            })
            .padding()
        })
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(landmark: ModelData().features[0])
}
