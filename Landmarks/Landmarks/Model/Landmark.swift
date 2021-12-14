//
//  Landmark.swift
//  Landmarks
//
//  Created by YJ on 2021/12/14.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String // 데이터에서 이미지 이름 읽을 속성
    var image: Image { // asset에서 이미지 불러올 속성
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
