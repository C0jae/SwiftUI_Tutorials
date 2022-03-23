//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()    // 꽉 채우기
                .frame(width: 50, height: 50)   // 크기 고정
            Text(landmark.name)
            
            Spacer()    // 해당 위치 기준 양 끝점으로 벌리기
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // landmark를 선언했으므로 파라미터 맞춰주기(landmarks)
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        // 미리보기 레이아웃 만들기(크기 설정)
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
