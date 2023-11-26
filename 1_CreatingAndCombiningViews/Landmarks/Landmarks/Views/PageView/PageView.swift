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
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

#Preview {
    PageView(pages: ModelData().features.map{ FeatureCard(landmark: $0) })
        .aspectRatio(3/2, contentMode: .fit)
}
