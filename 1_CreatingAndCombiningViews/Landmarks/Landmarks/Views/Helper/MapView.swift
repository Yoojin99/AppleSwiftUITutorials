//
//  MapView.swift
//  Landmarks
//
//  Created by YJ on 11/20/23.
//

import SwiftUI
import MapKit // SwiftUI 와 다른 프레임워크를 같은 파일에 import 하면 해당 프레임워크의 SwiftUI 전용 기능에 접근 가능

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region))) // bidirectional binding을 요구하지만 MapView 가 위치가 바뀌는 걸 추적할 필요가 없기 때문에 .constant
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate, // 이 view 의 coordinate 가 바뀌면 다시 view 를 업데이트 함.
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
