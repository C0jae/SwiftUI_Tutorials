//
//  CircleImage.swift
//  Landmarks
//
//  Created by 최영재 on 2022/03/20.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())    // 이미지 모양 원으로 설정
            .overlay {  // 테두리(?) 설정
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)  // 명암
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
