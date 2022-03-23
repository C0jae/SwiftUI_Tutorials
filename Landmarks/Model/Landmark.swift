//
//  Landmark.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/22.
//

import Foundation
import SwiftUI
import CoreLocation

// landmarkData에 대한 변수값 지정(json)
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    // 좌표(위도, 경도 2개의 값이 필요하므로 해당 변수를 가지고 있는 구조 생성 : Coordinates)
    private var coordinates: Coordinates
    
    // 생성된 위도, 경도의 값을 좌표로 설정
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
