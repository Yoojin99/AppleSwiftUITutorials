//
//  Badge.swift
//  Landmarks
//
//  Created by YJ on 11/25/23.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(angle: .degrees(Double(index) / Double(8)) * 360)
        }
        .opacity(0.5)
    }
    
    var body: some View {
        // 위에 있을수록 밑에 깔림
        ZStack {
            BadgeBackground()
            
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
