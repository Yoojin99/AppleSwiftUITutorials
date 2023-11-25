//
//  CircleImage.swift
//  Landmarks
//
//  Created by YJ on 11/20/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle()) // circle 자체를 mask 로 사용할 수도 있고 view 로 사용할 수도 있음
            .overlay { // image border
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
