//
//  MapView.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    // 좌표에 대한 변수 선언
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear { // view가 나타날때 실행될 action을 추가한다.
                // view가 나타날때 좌표를 설정한다.
                setRegion(coordinate)
            }
    }
    
    // 좌표 설정에 대한 함수 선언
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        // 좌표에 대한 파라미터 설정
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
