//
//  MapView.swift
//  Landmarks
//
//  Created by YJ on 11/20/23.
//

import SwiftUI
import MapKit // SwiftUI 와 다른 프레임워크를 같은 파일에 import 하면 해당 프레임워크의 SwiftUI 전용 기능에 접근 가능

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView()
}
