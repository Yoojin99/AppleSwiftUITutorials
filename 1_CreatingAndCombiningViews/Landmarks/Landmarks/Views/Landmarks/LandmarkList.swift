//
//  LandmarkList.swift
//  Landmarks
//
//  Created by YJ on 11/25/23.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData // environment(_:) 가 부모에 적용된 한 자동으로 값을 가져옴
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                
                // 1. static + dynamic view 결합
                // 2. 둘 이상의 다른 dynamic view 그룹을 묶을 때
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark) // destination
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
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
        .environment(ModelData())
}
