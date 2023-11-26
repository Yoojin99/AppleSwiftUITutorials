//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by YJ on 11/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
