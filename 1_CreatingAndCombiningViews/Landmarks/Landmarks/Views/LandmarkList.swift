//
//  LandmarkList.swift
//  Landmarks
//
//  Created by YJ on 11/25/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            // identifiable data. id 를 직접 주입하거나 identifiable 프로토콜을 채택하게 하거나
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail() // destination
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark") // 선택한 후에 나타나는 view의 placeholder. iPhone 에서는 필요없지만 iPad 에서는 선택전에 detail pane 이 보일 수도 있음
        }
    }
}

#Preview {
    LandmarkList()
}
