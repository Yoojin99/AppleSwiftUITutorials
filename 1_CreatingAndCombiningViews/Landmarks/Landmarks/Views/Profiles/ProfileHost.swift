//
//  ProfileHost.swift
//  Landmarks
//
//  Created by YJ on 11/26/23.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            ProfileSummary(profile: draftProfile)
        })
    }
}

#Preview {
    ProfileHost()
}
