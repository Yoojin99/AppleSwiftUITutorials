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
    // model 객체 생성
    // view 의 lifecycle 동안 오직 한 번 state 를 초기화하듯이 여기서도 앱의 lifecycle 중 한 번만 초기화함
    @State private var modelData = ModelData()
    
    // 화면에 보여줄 하나 이상의 scene 리턴
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
