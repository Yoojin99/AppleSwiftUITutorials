//
//  ProfileHost.swift
//  Landmarks
//
//  Created by YJ on 11/26/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode // @environment 로 접근할 수 있는 값들(envrionment 에 저장되어 있음)제공
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Editor")
            }
            
        })
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
