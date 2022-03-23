//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            // Landmarks의 데이터들을 한 화면에 리스트로 구현
            List(landmarks) { landmark in
                NavigationLink {    // 이동할 링크 설정
                    LandmarkDetail(landmark: landmark)
                } label: {  // 링크이동을 위한 클릭 라벨 설정
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
