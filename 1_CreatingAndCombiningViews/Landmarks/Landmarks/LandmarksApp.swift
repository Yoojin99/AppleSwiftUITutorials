//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by YJ on 11/20/23.
//

import SwiftUI

@main // app 의 entry point 명시
// SwiftUI 앱 사이클을 사용하는 앱은 App protocol 채택
struct LandmarksApp: App {
    // 화면에 보여줄 하나 이상의 scene 리턴
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
