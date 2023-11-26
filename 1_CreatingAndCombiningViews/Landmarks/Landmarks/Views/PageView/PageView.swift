//
//  PageView.swift
//  Landmarks
//
//  Created by YJ on 11/26/23.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 1
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
    }
}

#Preview {
    PageView(pages: ModelData().features.map{ FeatureCard(landmark: $0) })
        .aspectRatio(3/2, contentMode: .fit)
}
