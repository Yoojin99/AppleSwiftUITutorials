//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by YJ on 11/25/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool // binding 이라 이 view에서 만든 변경사항이 데이터 소스에도 적용됨
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            // voice over 에서 toggle favorite 읽어줌
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
