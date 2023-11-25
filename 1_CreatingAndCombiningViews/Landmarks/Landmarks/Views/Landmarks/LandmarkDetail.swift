//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by YJ on 11/25/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300) // width 는 자동으로 설정됨
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) { // default: center
                HStack {
                    Text(landmark.name)
                        .font(.title) // modifiers. each returns a new view
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer() // use the full width of device. parent view 의 모든 공간을 쓰도록 spacer view를 담고 있는 view 를 확장함
                    Text(landmark.state)
                }
                .font(.subheadline) // stack 내 모든 요소에 적용됨
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline) // navigation stack 안에 있을 때 유효
    }
}

#Preview {
    let modelData = ModelData()
    
    return LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(modelData)
}
