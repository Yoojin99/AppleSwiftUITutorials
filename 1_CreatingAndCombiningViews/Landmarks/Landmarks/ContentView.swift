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
        VStack(alignment: .leading) { // default: center
            Text("Turtle Rock")
                .font(.title) // modifiers. each returns a new view
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer() // use the full width of device. parent view 의 모든 공간을 쓰도록 spacer view를 담고 있는 view 를 확장함
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
