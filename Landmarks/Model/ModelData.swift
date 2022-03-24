//
//  ModelData.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/22.
//

import Foundation
//import Combine


// ObservableObject : landmarks에 변경사항이 있을겨우 모든 데이터를 새로고침 하지 않고 변경된 부분만 식별하여 해당 부분만 수정하게 한다.
final class ModelData: ObservableObject {
    // landmarkData.json 의 데이터를 Landmark.swift에 배열형식으로 선언
    // @Published : 변경된 데이터 부분을 자동으로 호출시켜준다.
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
