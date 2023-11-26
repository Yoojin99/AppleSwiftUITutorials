//
//  PageView.swift
//  Landmarks
//
//  Created by YJ on 11/26/23.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    
    var body: some View {
        PageViewController(pages: pages)
    }
}

#Preview {
    PageView(pages: ModelData().features.map{ FeatureCard(landmark: $0) })
        .aspectRatio(3/2, contentMode: .fit)
}
