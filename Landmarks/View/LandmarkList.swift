//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/23.
//

import SwiftUI

struct LandmarkList: View {
    // 앱의 많은 뷰와 공유해야하는 데이터의 경우 Swiftui는 EnvironmentObject 속성 래퍼를 제공한다. 이를 통해 필요한곳 어디에서나 모델 데이터를 공유할 수 있으며, 데이터가 변경될 때 뷰가 자동으로 업데이트 된 상태로 유지된다.
    @EnvironmentObject var modelData: ModelData
    
    // 즐겨찾기 장소만 표시하는 기능을 가진 변수 선언(기본값 = false)
    @State private var showFavoriteOnly = false
    
    // filter를 이용하여 전체 데이터 or 즐겨찾기 설정한 데이터 불러오기
    var filterdLandmark: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            // Landmarks의 데이터들을 한 화면에 리스트로 구현
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites Only")
                }
                ForEach(filterdLandmark) { landmark in
                    NavigationLink {    // 이동할 링크 설정
                        LandmarkDetail(landmark: landmark)
                    } label: {  // 링크이동을 위한 클릭 라벨 설정
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
