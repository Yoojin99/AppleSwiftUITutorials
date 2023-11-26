//
//  ContentView.swift
//  Landmarks
//
//  Created by YJ on 11/20/23.
//

// 기본적으로 structure + preview 형태
import SwiftUI

struct ContentView: View { // View 프로토콜 채택
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection,
                content:  {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        })
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
