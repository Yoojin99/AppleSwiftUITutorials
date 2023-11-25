//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by YJ on 11/25/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300) // width 는 자동으로 설정됨
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) { // default: center
                Text("Turtle Rock")
                    .font(.title) // modifiers. each returns a new view
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer() // use the full width of device. parent view 의 모든 공간을 쓰도록 spacer view를 담고 있는 view 를 확장함
                    Text("California")
                }
                .font(.subheadline) // stack 내 모든 요소에 적용됨
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandmarkDetail()
}
