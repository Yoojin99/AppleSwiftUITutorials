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
    @State private var filter = FilterCategory.all
    @State private var selectedLandmark: Landmark?
    
    enum FilterCategory: String, CaseIterable, Identifiable {
            case all = "All"
            case lakes = "Lakes"
            case rivers = "Rivers"
            case mountains = "Mountains"


            var id: FilterCategory { self }
        }
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            && (filter == .all || filter.rawValue == landmark.category.rawValue)
        }
    }
    
    var title: String {
        let title = filter == .all ? "Landmarks" : filter.rawValue
        return showFavoritesOnly ? "Favorite \(title)" : title
    }
    
    var index: Int? {
        modelData.landmarks.firstIndex(where: { $0.id == selectedLandmark?.id })
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        NavigationSplitView {
            List(selection: $selectedLandmark) {
                // 1. static + dynamic view 결합
                // 2. 둘 이상의 다른 dynamic view 그룹을 묶을 때
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark) // destination
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    .tag(landmark)
                }
            }
            .navigationTitle(title)
            .frame(minWidth: 300)
            .toolbar {
                ToolbarItem {
                    Menu {
                        Picker("Category", selection: $filter) {
                            ForEach(FilterCategory.allCases) { category in
                                Text(category.rawValue).tag(category)
                            }
                        }
                        .pickerStyle(.inline) // appear all together
                        
                        Toggle(isOn: $showFavoritesOnly, label: {
                            Text("Favorites Only")
                        })
                    } label: {
                        Label("Filter", systemImage: "slider.horizontal.3")
                    }
                }
            }
        } detail: {
            Text("Select a Landmark") // 선택한 후에 나타나는 view의 placeholder. iPhone 에서는 필요없지만 iPad 에서는 선택전에 detail pane 이 보일 수도 있음
        }
        .focusedValue(\.selectedLandmark, $modelData.landmarks[index ?? 0])
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
