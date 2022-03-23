//
//  CircleImage.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/20.
//

import SwiftUI

struct CircleImage: View {
    // Image 변수 선언
    var image: Image
    
    var body: some View {
        image   // image 변수 활용
            .clipShape(Circle())    // 이미지 모양 원으로 설정
            .overlay {  // 테두리(?) 설정
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)  // 명암
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        // Image 변수 활용에 따른 파라미터 추가
        CircleImage(image: Image("turtlerock"))
    }
}
