//
//  ContentView.swift
//  Landmarks
//
//  Created by YJ on 11/20/23.
//

// 기본적으로 structure + preview 형태
import SwiftUI

struct ContentView: View { // View 프로토콜 채택
    var body: some View {
        Text("Hello SwiftUI!")
            .font(.title) // modifiers. each returns a new view
            .foregroundStyle(.black)
    }
}

#Preview {
    ContentView()
}
